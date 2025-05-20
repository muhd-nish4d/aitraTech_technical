import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../const/assets/icons.dart';
import '../../../../const/style/app_colors.dart';

class HomePostTitleSection extends StatelessWidget {
  const HomePostTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
            decorationColor: AppColors.textPrimary,
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
    );
  }
}
