import 'package:cached_network_image/cached_network_image.dart';
import 'package:defiraiser_mobile/core/cache/app_cache.dart';
import 'package:defiraiser_mobile/core/di/injector.dart';
import 'package:defiraiser_mobile/core/global/constants/app_icons.dart';
import 'package:defiraiser_mobile/core/global/constants/app_images.dart';
import 'package:defiraiser_mobile/core/global/constants/app_texts.dart';
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/global/themes/color_scheme.dart';
import 'package:defiraiser_mobile/core/routers/routes_constants.dart';
import 'package:defiraiser_mobile/core/shared/appbar/appbar.dart';
import 'package:defiraiser_mobile/core/shared/button/buttons.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/login/states/get_user_details/bloc/get_user_details_bloc.dart';
import 'package:defiraiser_mobile/features/home/presentation/_home.dart';
import 'package:defiraiser_mobile/features/profile/presentation/state/set_biometrics_bloc/set_biometrics_bloc_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  final isSwitched = ValueNotifier<bool>(false);

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    _animationController.repeat(reverse: true);
    // check biometrics enabled from bloc state and set isSwitched value

    super.initState();
  }

  @override
  void didChangeDependencies() {
    // context.read<GetUserDetailsBloc>().add(GetUserEventEq());
    // context.read<GetUserDetailsBloc>().stream.listen((event) {
    //   event.maybeWhen(
    //     orElse: () => isSwitched.value,
    //     loadDetails: (success) => isSwitched.value = success.biometrics,
    //   );
    // });
    super.didChangeDependencies();
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  final user = sl<AppCache>().getUserDetails();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(context.screenWidth(), 60),
        child: DeFiRaiseAppBar(
          isBack: false,
          title: AppTexts.navProfile,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: BlocBuilder<GetUserDetailsBloc, GetUserDetailsState>(
          builder: (context, state) {
            return Column(
              children: [
                VerticalMargin(20),
                _profileImage(),
                VerticalMargin(10),
                _profilePersonalInfo(),
                VerticalMargin(30),
                _profileMenu(),
                Spacer(),
                _logoutButton(),
                VerticalMargin(10),
              ],
            );
          },
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
          // _profileMenuItem(AppIcons.profileUnselected, "Edit Profile",
          //     onTap: () {
          //   context.goNamed(RouteConstants.editProfile);
          // }),
          // _divider(),
          _profileMenuItem(AppIcons.change, "Change Password", onTap: () {
            context.goNamed(RouteConstants.changePassword);
          }),
          _divider(),
          _profileMenuItem(AppIcons.security, "Security", onTap: () {
            context.goNamed(RouteConstants.security);
          }),
          _divider(),
          _profileMenuBiometrics(
            Config.isIos ? AppIcons.faceId : AppIcons.fingerPrint,
            "Biometrics",
          ),
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

  Widget _profileMenuBiometrics(String icon, String title) {
    return BlocBuilder<GetUserDetailsBloc, GetUserDetailsState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: BlocConsumer<SetBiometricsBlocBloc, SetBiometricsBlocState>(
            listener: _listener,
            builder: (context, state) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                  Config.isAndroid
                      ? Switch(
                          value: isSwitched.value,
                          onChanged: (value) {
                            context
                                .read<SetBiometricsBlocBloc>()
                                .add(SetBiometricsEvent(
                                  biometrics: value,
                                ));
                            setState(() {
                              isSwitched.value = value;
                            });
                          },
                          activeTrackColor: AppColors.primaryColor,
                          activeColor: AppColors.white100,
                        )
                      : CupertinoSwitch(
                          // This bool value toggles the switch.
                          value: isSwitched.value,
                          activeColor: AppColors.secondaryColor,
                          onChanged: (bool? value) {
                            // This is called when the user toggles the switch.
                            context
                                .read<SetBiometricsBlocBloc>()
                                .add(SetBiometricsEvent(
                                  biometrics: value,
                                ));
                            setState(() {
                              isSwitched.value = value ?? false;
                            });
                          },
                        ),
                ],
              );
            },
          ),
        );
      },
    );
  }

  Widget _profileMenuItem(String icon, String title, {void Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }

  Widget _profilePersonalInfo() {
    return BlocBuilder<GetUserDetailsBloc, GetUserDetailsState>(
        builder: (context, state) {
      return Column(children: [
        Text(
            state.maybeWhen(
              orElse: () => user.username,
              loadDetails: (success) => success.username,
            ),
            style: Config.b1(context).copyWith(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColors.secondaryColor,
            )),
        VerticalMargin(5),
        GestureDetector(
          onTap: () {
            Clipboard.setData(ClipboardData(
                text: state.maybeWhen(
                    orElse: () => user.address,
                    loadDetails: (success) => success.address.toString())));
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Copied to Clipboard'),
              ),
            );
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                state.maybeWhen(
                    // 0x...3uw
                    orElse: () => "${user.address.split("x")[0]}x..."
                        "${user.address.substring(user.address.toString().length - 5)}",
                    loadDetails: (success) =>
                        "${success.address.toString().split("x")[0]}x..."
                        // last 5 characters
                        "${success.address.toString().substring(success.address.toString().length - 5)}"),
                style: Config.b3(context).copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
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
        ),
        VerticalMargin(10),
      ]);
    });
  }

  Align _profileImage() {
    return Align(
      alignment: Alignment.center,
      child: BlocBuilder<GetUserDetailsBloc, GetUserDetailsState>(
          builder: (context, state) {
        return GestureDetector(
          onTap: () {
            context.goNamed(RouteConstants.selectAvatar2);
          },
          child: Stack(
            children: [
              AnimatedBuilder(
                  animation: _animationController,
                  builder: (context, child) {
                    return CachedNetworkImage(
                        imageUrl: state.maybeWhen(
                          orElse: () => "",
                          loadDetails: (success) => success.avatar,
                        ),
                        fit: BoxFit.cover,
                        height: 110,
                        width: 110,
                        placeholder: (context, url) => LoadingImage(),
                        errorWidget: (context, url, error) {
                          return Image.asset(
                            AppImages.avatar(1),
                            height: 110,
                            fit: BoxFit.cover,
                            width: 110,
                          );
                        });
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
      }),
    );
  }

  void _listener(BuildContext context, SetBiometricsBlocState state) {
    state.maybeWhen(
        orElse: () {},
        loaded: (response) {
          context.read<GetUserDetailsBloc>().add(GetUserEventEq());
        });
  }
}
