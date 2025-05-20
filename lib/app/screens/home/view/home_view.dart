import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:visibility_detector/visibility_detector.dart';
import 'package:youtube_player/app/screens/home/widgets/player.dart';
import 'package:youtube_player/const/assets/icons.dart';
import 'package:youtube_player/const/assets/images.dart';
import 'package:youtube_player/const/val/values.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../const/style/app_colors.dart';
import '../widgets/post_action.dart';
import '../widgets/post_desc.dart';
import '../widgets/post_sub_title.dart';
import '../widgets/post_title.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static ValueNotifier<int> playingIndex = ValueNotifier(-1);
  static final ValueNotifier<Map<String, Duration>> playbackPositions =
      ValueNotifier({});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            labelColor: AppColors.textPrimary,
            unselectedLabelColor: AppColors.textTabGrey,
            indicatorColor: AppColors.textPrimary,
            labelStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
            unselectedLabelStyle: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: AppColors.textTabGrey,
            ),
            tabs: const [
              Tab(text: 'Trending'),
              Tab(text: 'Group'),
              Tab(text: 'Following'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                // Outer ValueListenableBuilder to pause videos that go offscreen
                ValueListenableBuilder(
                  valueListenable: playingIndex,
                  builder: (context, playingIndexValue, child) {
                    // Inner ValueListenableBuilder to restore saved video positions
                    return ValueListenableBuilder(
                      valueListenable: playbackPositions,
                      builder: (context, startFromMap, child) {
                        return ListView.separated(
                          itemCount: AppValues.videoUrls.length,
                          itemBuilder: (context, index) {
                            final videoUrl = AppValues.videoUrls[index];
                            final videoId =
                                YoutubePlayer.convertUrlToId(videoUrl)!;
                            final startFrom =
                                startFromMap[videoId] ?? Duration.zero;

                            return VisibilityDetector(
                              key: Key('video_$index'),
                              onVisibilityChanged: (info) {
                                // Update currently playing index if video becomes visible
                                if (info.visibleFraction > 0.5 &&
                                    playingIndexValue != index) {
                                  playingIndex.value = index;
                                }
                              },
                              child: Padding(
                                padding: EdgeInsets.all(14),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 38,
                                      height: 38,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                            index % 2 == 0
                                                ? AppImages.userImage1
                                                : AppImages.userImage2,
                                          ),
                                        ),
                                        shape: BoxShape.circle,
                                        color: AppColors.textPrimary,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: Column(
                                        children: [
                                          HomePostTitleSection(),
                                          SizedBox(height: 6),
                                          HomePostSubtitleSection(),
                                          SizedBox(height: 13),
                                          DescriptionSection(),

                                          SizedBox(height: 12),
                                          Row(
                                            children: [
                                              Text(
                                                '#IndiaEducation  #IndiaEducation',
                                                style: TextStyle(
                                                  color: AppColors.appbarBack,
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 12),
                                          Container(
                                            height: 170,
                                            decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                            ),
                                            child:
                                                playingIndexValue == index
                                                    ? YoutubePlayerWidget(
                                                      videoId: videoId,
                                                      startFrom: startFrom,
                                                      onStopped: (pos) {
                                                        playbackPositions
                                                                .value[videoId] =
                                                            pos;
                                                      },
                                                    )
                                                    : Center(
                                                      child: Container(
                                                        alignment:
                                                            Alignment.center,
                                                        width: 36,
                                                        height: 36,
                                                        padding: EdgeInsets.all(
                                                          10,
                                                        ),
                                                        decoration: BoxDecoration(
                                                          shape:
                                                              BoxShape.circle,
                                                          color:
                                                              AppColors
                                                                  .background,
                                                        ),
                                                        child: SvgPicture.asset(
                                                          height: 10,
                                                          width: 10,
                                                          AppIcons.videoPlay,
                                                          semanticsLabel:
                                                              'video',
                                                        ),
                                                      ),
                                                    ),
                                          ),
                                          SizedBox(height: 10),
                                          PostActionSection(),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => Divider(),
                        );
                      },
                    );
                  },
                ),
                Center(child: Text('Group')),
                Center(child: Text('Following')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
