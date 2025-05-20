import 'package:flutter/material.dart';

import '../../../../const/style/app_colors.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          height: 1.50,
          color: AppColors.textDesc,
        ),
        text:
            'Quality of Education in Bihar Modern Bihar has an inadequate educational infrastructure creating a huge mismatch between demand and supply. This problem is further compounded by increases in population. The craving for higher education among the general population of Bihar has led to.....',
        children: [
          TextSpan(
            text: 'See more',
            style: TextStyle(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w700,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
