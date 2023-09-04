import 'package:defiraiser_mobile/core/global/constants/app_icons.dart';
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/global/themes/color_scheme.dart';
import 'package:defiraiser_mobile/features/donation/presentation/view/campaigns_screen.dart';
import 'package:defiraiser_mobile/features/donation/presentation/view/donations_screen.dart';
import 'package:defiraiser_mobile/features/home/presentation/_home.dart';
import 'package:defiraiser_mobile/features/profile/presentation/view/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../global/constants/app_texts.dart';

class BottomNavigationController extends StatefulWidget {
  const BottomNavigationController({Key? key}) : super(key: key);

  @override
  _BottomNavigationControllerState createState() =>
      _BottomNavigationControllerState();
}

class _BottomNavigationControllerState
    extends State<BottomNavigationController> {
  late PageController pageController;
  int _page = 0;

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          onPageChanged: onPageChanged,
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            HomeScreen(),
            DonationScreenView(),
            CampaignScreenView(),
            ProfileScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          backgroundColor: AppColors.white100,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  SvgPicture.asset(
                    AppIcons.homeUnselected,
                    height: 28.sp,
                    width: 28.sp,
                    allowDrawingOutsideViewBox: true,
                    color: AppColors.grey300,
                  ),
                  VerticalMargin(1.0),
                  Text(
                    AppTexts.home,
                    style: Config.b2(context).copyWith(
                      fontSize: 10.sp,
                      color: AppColors.grey300,
                    ),
                  ),
                ],
              ),
              label: "",
              tooltip: AppTexts.home,
              activeIcon: Column(
                children: [
                  SvgPicture.asset(
                    AppIcons.homeSelected,
                    height: 28.sp,
                    width: 28.sp,
                    allowDrawingOutsideViewBox: true,
                    color: AppColors.primaryColor,
                  ),
                  VerticalMargin(1.0),
                  Text(
                    AppTexts.home,
                    style: Config.b2(context).copyWith(
                      fontSize: 10.sp,
                      color: AppColors.primaryColor,
                    ),
                  )
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  SvgPicture.asset(
                    AppIcons.handUnselected,
                    height: 28.sp,
                    width: 28.sp,
                    allowDrawingOutsideViewBox: true,
                    color: AppColors.grey300,
                  ),
                  VerticalMargin(1.0),
                  Text(
                    AppTexts.navDonation,
                    style: Config.b2(context).copyWith(
                      fontSize: 10.sp,
                      color: AppColors.grey300,
                    ),
                  ),
                ],
              ),
              label: "",
              tooltip: AppTexts.navDonation,
              activeIcon: Column(
                children: [
                  SvgPicture.asset(
                    AppIcons.handSelected,
                    height: 28.sp,
                    width: 28.sp,
                    allowDrawingOutsideViewBox: true,
                    color: AppColors.primaryColor,
                  ),
                  VerticalMargin(1.0),
                  Text(
                    AppTexts.navDonation,
                    style: Config.b2(context).copyWith(
                      fontSize: 10.sp,
                      color: AppColors.primaryColor,
                    ),
                  )
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  SvgPicture.asset(
                    AppIcons.donateUnselected,
                    height: 28.sp,
                    width: 28.sp,
                    allowDrawingOutsideViewBox: true,
                    color: AppColors.grey300,
                  ),
                  VerticalMargin(1.0),
                  Text(
                    AppTexts.navCampaign,
                    style: Config.b2(context).copyWith(
                      fontSize: 10.sp,
                      color: AppColors.grey300,
                    ),
                  ),
                ],
              ),
              label: "",
              tooltip: AppTexts.donation,
              activeIcon: Column(
                children: [
                  SvgPicture.asset(
                    AppIcons.donateSelected,
                    height: 28.sp,
                    width: 28.sp,
                    allowDrawingOutsideViewBox: true,
                    color: AppColors.primaryColor,
                  ),
                  VerticalMargin(1.0),
                  Text(
                    AppTexts.navCampaign,
                    style: Config.b2(context).copyWith(
                      fontSize: 10.sp,
                      color: AppColors.primaryColor,
                    ),
                  )
                ],
              ),
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  SvgPicture.asset(
                    AppIcons.profileUnselected,
                    height: 28.sp,
                    width: 28.sp,
                    allowDrawingOutsideViewBox: true,
                    color: AppColors.grey300,
                  ),
                  VerticalMargin(1.0),
                  Text(
                    AppTexts.navProfile,
                    style: Config.b2(context).copyWith(
                      fontSize: 10.sp,
                      color: AppColors.grey300,
                    ),
                  ),
                ],
              ),
              label: "",
              tooltip: AppTexts.navProfile,
              activeIcon: Column(
                children: [
                  SvgPicture.asset(
                    AppIcons.profileSelected,
                    height: 28.sp,
                    width: 28.sp,
                    allowDrawingOutsideViewBox: true,
                    color: AppColors.primaryColor,
                  ),
                  VerticalMargin(1.0),
                  Text(
                    AppTexts.navProfile,
                    style: Config.b2(context).copyWith(
                      fontSize: 10.sp,
                      color: AppColors.primaryColor,
                    ),
                  )
                ],
              ),
            ),
          ],
          selectedItemColor: AppColors.primaryColor,
          selectedFontSize: 12.sp,
          unselectedFontSize: 12.sp,
          onTap: navigationTapped,
          type: BottomNavigationBarType.fixed,
          currentIndex: _page,
          iconSize: 20.sp,
        ));
  }
}
