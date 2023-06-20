import 'package:defiraiser_mobile/core/global/constants/app_icons.dart';
import 'package:defiraiser_mobile/core/global/constants/app_images.dart';
import 'package:defiraiser_mobile/core/global/constants/app_texts.dart';
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/global/themes/color_scheme.dart';
import 'package:defiraiser_mobile/core/shared/button/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    _animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [
            _profileImage(),
            VerticalMargin(10),
            _profilePersonalInfo(),
            VerticalMargin(30),
            _profileMenu(),
            Spacer(),
            _logoutButton(),
            VerticalMargin(10),
          ],
        ),
      ),
    );
  }

  Widget _logoutButton() {
    return AppButton(
      text: "LogOut",
      textColor: AppColors.white100,
      onTap: () {},
      color: AppColors.errorColor,
    );
  }

  Widget _profileMenu() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: AppColors.white100,
        border: Border.all(
          color: AppColors.grey200,
          width: 1,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          _profileMenuItem(AppIcons.profileUnselected, AppTexts.navProfile),
          _divider(),
          _profileMenuItem(AppIcons.profileUnselected, AppTexts.navProfile),
          _divider(),
          _profileMenuItem(AppIcons.profileUnselected, AppTexts.navProfile),
          _divider(),
          _profileMenuItem(AppIcons.profileUnselected, AppTexts.navProfile),
        ],
      ),
    );
  }

  Widget _divider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 1,
      color: AppColors.grey200,
    );
  }

  Widget _profileMenuItem(String icon, String title) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            color: AppColors.primaryColor,
            height: 25,
            width: 25,
          ),
          HorizontalMargin(10),
          Text(
            title,
            style: Config.b3(context).copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _profilePersonalInfo() {
    return Column(children: [
      Text('John Doe',
          style: Config.b1(context).copyWith(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.secondaryColor,
          )),
      VerticalMargin(5),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '0x4b...a3c',
            style: Config.b3(context).copyWith(
                fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          HorizontalMargin(5),
          SvgPicture.asset(
            AppIcons.copyPaste,
            color: AppColors.secondaryColor,
            height: 14,
            width: 14,
          ),
        ],
      ),
      VerticalMargin(10),
    ]);
  }

  Align _profileImage() {
    return Align(
      alignment: Alignment.center,
      child: Stack(
        children: [
          AnimatedBuilder(
              animation: _animationController,
              builder: (context, child) {
                return Container(
                  width: 120,
                  // margin: EdgeInsets.all(
                  //     _animationController.value * 3),
                  padding: EdgeInsets.all(_animationController.value * 3),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: AppColors.grey200, width: 4)),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(AppImages.avatar(1)),
                  ),
                );
              }),
          Positioned(
            top: 0,
            right: -8,
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.textfieldColor,
                  border: Border.all(color: AppColors.white100, width: 3)),
              child: CircleAvatar(
                  radius: 15,
                  backgroundColor: AppColors.textfieldColor,
                  child: AnimatedBuilder(
                      animation: _animationController,
                      builder: (context, child) {
                        return AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          // Change anchor point

                          transform: Matrix4.rotationZ(
                              _animationController.value * 0.25),
                          child: Text('👋🏽',
                              style: TextStyle(
                                  fontSize: 20, color: AppColors.white100)),
                        );
                      })),
            ),
          )
        ],
      ),
    );
  }
}
