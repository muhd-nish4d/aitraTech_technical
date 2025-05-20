import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../const/assets/icons.dart';
import '../../../../const/style/app_colors.dart';

class PostActionSection extends StatelessWidget {
  const PostActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
