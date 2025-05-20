import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:youtube_player/const/assets/icons.dart';
import 'package:youtube_player/const/assets/images.dart';

import '../../const/style/app_colors.dart';
import '../screens/home/view/home_view.dart';

class MainBottomNavScreen extends StatelessWidget {
  const MainBottomNavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.appbarBack.withOpacity(0.2),
        title: Row(
          spacing: 7,
          children: [
            Container(
              width: 24,
              height: 32,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(AppImages.appIcon)),
              ),
            ),
            const Text(
              'Mudda',
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        actions: [
          SvgPicture.asset(
            width: 32,
            height: 32,
            AppIcons.notificationIcon,
            semanticsLabel: 'Notification',
          ),
          SizedBox(width: 16),
          Container(
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.textPrimary),
              image: DecorationImage(image: AssetImage(AppImages.userIcon)),
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: HomeView(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        selectedItemColor: AppColors.textPrimary,
        unselectedItemColor: AppColors.textPrimary,
        backgroundColor: AppColors.background,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 14,
          color: AppColors.textPrimary,
        ),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          color: AppColors.textPrimary,
        ),
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              width: 32,
              height: 32,
              AppIcons.bottomNavHome,
              semanticsLabel: 'Bottom Nav Home',
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              width: 32,
              height: 32,
              AppIcons.bottomNavCreate,
              semanticsLabel: 'Bottom Nav Create',
            ),
            label: 'Create',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              width: 32,
              height: 32,
              AppIcons.bottomNavPanchayath,
              semanticsLabel: 'Bottom Nav Panchayat',
            ),
            label: 'Panchayat',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {
          // Handle navigation
        },
      ),
    );
  }
}
