import 'package:cached_network_image/cached_network_image.dart';
import 'package:defiraiser_mobile/core/cache/app_cache.dart';
import 'package:defiraiser_mobile/core/di/injector.dart';
import 'package:defiraiser_mobile/core/global/constants/app_images.dart';
import 'package:defiraiser_mobile/core/global/constants/app_texts.dart';
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/global/themes/color_scheme.dart';
import 'package:defiraiser_mobile/core/routers/routes_constants.dart';
import 'package:defiraiser_mobile/core/shared/appbar/appbar.dart';
import 'package:defiraiser_mobile/core/shared/button/buttons.dart';
import 'package:defiraiser_mobile/core/utils/loading_overlay.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/login/states/get_user_details/bloc/get_user_details_bloc.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/login/states/set_profile_avatar/bloc/set_profile_avatar_bloc.dart';
import 'package:defiraiser_mobile/features/home/presentation/_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SelectAvatarScreen2 extends ConsumerStatefulWidget {
  const SelectAvatarScreen2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<SelectAvatarScreen2>
    with SingleTickerProviderStateMixin, LoadingOverlayMixin {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final isValidate = ValueNotifier<bool>(false);
  final isSelected = ValueNotifier<int>(10);
  OverlayEntry? _overlayEntry;
  late AnimationController _animationController;

  final user = sl<AppCache>().getUserDetails();

  @override
  void initState() {
    setState(() {
      String avatarNumber = user.avatar
          .toString()
          .split('/')
          .last
          .split('_')[0]
          .split("avatar")
          .last;
      print(avatarNumber);

      // split the string to get the avatar number
      isSelected.value =
          int.parse(avatarNumber) - 1; // add 1 because the first avatar is 0
    });

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
        appBar: PreferredSize(
          preferredSize: Size(context.screenWidth(), 60),
          child: DeFiRaiseAppBar(
            isBack: true,
            title: AppTexts.selectAvatar,
          ),
        ),
        body: SafeArea(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      VerticalMargin(20),
                      Align(
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
                                    padding: EdgeInsets.all(
                                        _animationController.value * 3),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: AppColors.grey200,
                                            width: 4)),
                                    child: isSelected.value == 10
                                        ? BlocBuilder<GetUserDetailsBloc,
                                                GetUserDetailsState>(
                                            builder: (context, state) {
                                            return CachedNetworkImage(
                                                imageUrl: state.maybeWhen(
                                                  orElse: () => user.avatar,
                                                  loadDetails: (success) =>
                                                      success.avatar,
                                                ),
                                                fit: BoxFit.cover,
                                                // height: 60,
                                                // width: 60,
                                                placeholder: (context, url) =>
                                                    LoadingImage(),
                                                errorWidget:
                                                    (context, url, error) {
                                                  return Image.asset(
                                                    AppImages.avatar(1),
                                                    height: 60,
                                                    fit: BoxFit.cover,
                                                    width: 60,
                                                  );
                                                });
                                          })
                                        : CircleAvatar(
                                            radius: 60,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage: AssetImage(
                                                AppImages.avatar(
                                                    isSelected.value + 1)),
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
                                    border: Border.all(
                                        color: AppColors.white100, width: 3)),
                                child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: AppColors.textfieldColor,
                                    child: AnimatedBuilder(
                                        animation: _animationController,
                                        builder: (context, child) {
                                          return AnimatedContainer(
                                            duration:
                                                Duration(milliseconds: 200),
                                            // Change anchor point

                                            transform: Matrix4.rotationZ(
                                                _animationController.value *
                                                    0.25),
                                            child: Text('👋',
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    color: AppColors.white100)),
                                          );
                                        })),
                              ),
                            )
                          ],
                        ),
                      ),
                      VerticalMargin(30),

                      Align(
                        alignment: Alignment.center,
                        child: Wrap(
                          spacing: 30,
                          runSpacing: 10,
                          verticalDirection: VerticalDirection.down,
                          children:
                              List.generate(9, (index) => _avatars(index)),
                        ),
                      ),
                      VerticalMargin(20),
                      // Login Button
                      BlocConsumer<SetProfileAvatarBloc, SetProfileAvatarState>(
                        listener: _listener,
                        builder: (context, state) {
                          return AppButton(
                            text: "Update Avatar",
                            onTap: () {
                              context
                                  .read<SetProfileAvatarBloc>()
                                  .add(SetProfileAvatarEq(
                                    imageId: isSelected.value + 1,
                                  ));
                            },
                            textColor: AppColors.white100,
                            textSize: 12,
                            color: AppColors.primaryColor,
                          );
                        },
                      ),
                    ])))));
  }

  GestureDetector _avatars(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected.value = index;
          print(isSelected.value);
        });
      },
      child: Column(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            // Ripple effect on border
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.textfieldColor,
                border: Border.all(
                    color: isSelected.value == index
                        ? AppColors.secondaryColor
                        : AppColors.textfieldColor,
                    width: 1)),
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(
                AppImages.avatar(index + 1),
              ),
            ),
          ),
          VerticalMargin(5),
          Text(
            '0x0${index + 1}',
            style: Config.b3(context).copyWith(
              color: AppColors.grey100,
            ),
          )
        ],
      ),
    );
  }

  void _listener(BuildContext context, SetProfileAvatarState state) {
    state.maybeWhen(orElse: () {
      _overlayEntry?.remove();
    }, loading: () {
      _overlayEntry = showLoadingOverlay(context, _overlayEntry);
    }, profileError: (message) {
      _overlayEntry?.remove();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: AppColors.errorColor,
        ),
      );
    }, profileSet: (response) {
      _overlayEntry?.remove();

      context.goNamed(RouteConstants.home);
      context.read<GetUserDetailsBloc>().add(GetUserEventEq());
    });
  }
}
