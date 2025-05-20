import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:youtube_player/const/assets/icons.dart';

import '../../../../const/style/app_colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
                ListView.separated(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(14),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 38,
                            height: 38,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.textPrimary.withOpacity(0.2),
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  spacing: 12,
                                  children: [
                                    Text(
                                      'Ishan Verma',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        color: AppColors.textTitle,
                                      ),
                                    ),
                                    SvgPicture.asset(
                                      width: 12,
                                      height: 12,
                                      AppIcons.verified,
                                      semanticsLabel: 'verified',
                                    ),
                                    Text(
                                      'Follow',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        decoration: TextDecoration.underline,
                                        color: AppColors.textPrimary,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      '2days ago',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        color: AppColors.textTabGrey,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 6),
                                Row(
                                  spacing: 4,
                                  children: [
                                    Text(
                                      'Bihar(S)',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: AppColors.subtitleDot,
                                      ),
                                    ),
                                    Container(
                                      width: 6,
                                      height: 6,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.subtitleDot,
                                      ),
                                    ),
                                    Text(
                                      'Problem',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: AppColors.subtitleDot,
                                      ),
                                    ),
                                    Container(
                                      width: 6,
                                      height: 6,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.subtitleDot,
                                      ),
                                    ),
                                    Text(
                                      'Education',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                        color: AppColors.subtitleDot,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 13),
                                Text(
                                  "Quality of Education in Bihar Modern Bihar has an inadequate educational infrastructure creating a huge mismatch between demand and supply. This problem is further compounded by increases in population. The craving for higher education among the general population of Bihar has led to",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: AppColors.textDesc,
                                  ),
                                ),
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
                                Container(height: 170, color: Colors.amber),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    SvgPicture.asset(
                                      width: 18,
                                      height: 18,
                                      AppIcons.heart,
                                      semanticsLabel: 'heart',
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      'Likes',
                                      style: TextStyle(
                                        color: AppColors.error,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(width: 24),
                                    SvgPicture.asset(
                                      width: 18,
                                      height: 18,
                                      AppIcons.comments,
                                      semanticsLabel: 'Comments Logo',
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      'Comments',
                                      style: TextStyle(
                                        color: AppColors.textTabGrey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    ),
                                    Spacer(),
                                    SvgPicture.asset(
                                      width: 18,
                                      height: 18,
                                      AppIcons.whatsapp,
                                      semanticsLabel: 'Whatsapp Logo',
                                    ),
                                    SizedBox(width: 3),
                                    Text(
                                      'Share',
                                      style: TextStyle(
                                        color: AppColors.textTabGrey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(),
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
