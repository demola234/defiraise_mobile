import 'package:defiraiser_mobile/core/global/constants/app_images.dart';
import 'package:defiraiser_mobile/core/global/constants/app_texts.dart';
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/global/themes/color_scheme.dart';
import 'package:defiraiser_mobile/core/routers/routes_constants.dart';
import 'package:defiraiser_mobile/core/shared/button/buttons.dart';
import 'package:defiraiser_mobile/core/utils/input_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SelectAvatarScreen extends ConsumerStatefulWidget {
  const SelectAvatarScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _SelectAvatarScreenState();
}

class _SelectAvatarScreenState extends ConsumerState<SelectAvatarScreen>
    with InputValidationMixin, SingleTickerProviderStateMixin {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final isValidate = ValueNotifier<bool>(false);
  final isSelected = ValueNotifier<int>(0);

  late final AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 1000));
    _animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(AppTexts.selectAvatar,
                                  style: Config.h2(context).copyWith(
                                    fontSize: 24,
                                  )),
                              VerticalMargin(5),
                              // 📝 Note: The code below is the same as the one in the previous snippet.
                              Text(AppTexts.selectAvatarDesc,
                                  style: Config.b3(context).copyWith(
                                    color: AppColors.grey100,
                                  )),
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
                                            child: CircleAvatar(
                                              radius: 60,
                                              backgroundColor:
                                                  Colors.transparent,
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
                                                color: AppColors.white100,
                                                width: 3)),
                                        child: CircleAvatar(
                                            radius: 15,
                                            backgroundColor:
                                                AppColors.textfieldColor,
                                            child: AnimatedBuilder(
                                                animation: _animationController,
                                                builder: (context, child) {
                                                  return AnimatedContainer(
                                                    duration: Duration(
                                                        milliseconds: 200),
                                                    // Change anchor point

                                                    transform:
                                                        Matrix4.rotationZ(
                                                            _animationController
                                                                    .value *
                                                                0.25),
                                                    child: Text('👋',
                                                        style: TextStyle(
                                                            fontSize: 20,
                                                            color: AppColors
                                                                .white100)),
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
                                  children: List.generate(
                                      9, (index) => _avatars(index)),
                                ),
                              ),
                              VerticalMargin(20),
                              // Login Button
                              AppButton(
                                text: AppTexts.dashboard,
                                onTap: () {
                                  //FIXME: Navigate to login screen
                                  context.goNamed(RouteConstants.home);
                                },
                                textColor: AppColors.white100,
                                textSize: 12,
                                color: AppColors.primaryColor,
                              ),
                            ]))))));
  }

  GestureDetector _avatars(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected.value = index;
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
}
