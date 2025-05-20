import 'package:flutter/material.dart';

import '../../../../const/style/app_colors.dart';

class HomePostSubtitleSection extends StatelessWidget {
  const HomePostSubtitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
