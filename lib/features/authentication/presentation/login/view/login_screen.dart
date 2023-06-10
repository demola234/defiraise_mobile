import 'package:defiraiser_mobile/core/global/constants/app_icons.dart';
import 'package:defiraiser_mobile/core/global/constants/app_texts.dart';
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/global/themes/color_scheme.dart';
import 'package:defiraiser_mobile/core/shared/appbar/appbar.dart';
import 'package:defiraiser_mobile/core/shared/button/buttons.dart';
import 'package:defiraiser_mobile/core/shared/textfield/textfield.dart';
import 'package:defiraiser_mobile/core/utils/input_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen>
    with InputValidationMixin {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final FocusNode _emailNode = FocusNode();
  final FocusNode _passwordNode = FocusNode();
  final isValidate = ValueNotifier<bool>(false);
  final isHide = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size(context.screenWidth(), 60),
            child: DeFiRaiseAppBar(
              title: '',
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(AppTexts.createAccount,
                        style: Config.b2(context).copyWith(
                          fontSize: 15,
                          color: AppColors.primaryColor,
                        )),
                  ),
                )
              ],
            )),
        body: SafeArea(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              VerticalMargin(20),
                              Text(AppTexts.login,
                                  style: Config.h2(context).copyWith()),
                              VerticalMargin(5),
                              // 📝 Note: The code below is the same as the one in the previous snippet.
                              Text(AppTexts.loginDesc,
                                  style: Config.b1(context).copyWith(
                                    color: AppColors.grey100,
                                  )),
                              VerticalMargin(50),
                              AppTextField(
                                controller: _emailController,
                                hintText: AppTexts.fillEmail,
                                inputType: TextInputType.emailAddress,
                                textCapitalization: TextCapitalization.none,
                                focusNode: _emailNode,
                                textInputAction: TextInputAction.next,
                                validator: isValidate.value
                                    ? combine([
                                        withMessage(AppTexts.emailInvalid,
                                            isInvalidEmail),
                                        withMessage(
                                            AppTexts.fieldEmpty("Email"),
                                            isTextEmpty),
                                      ])
                                    : null,
                              ),
                              VerticalMargin(20),
                              AppTextField(
                                hintText: AppTexts.password,
                                controller: _passwordController,
                                inputType: TextInputType.visiblePassword,
                                textInputAction: TextInputAction.done,
                                focusNode: _passwordNode,
                                obscureText: isHide.value,
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(14.0),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isHide.value = !isHide.value;
                                      });
                                    },
                                    child: SvgPicture.asset(
                                      isHide.value
                                          ? AppIcons.eye
                                          : AppIcons.eyeSplash,
                                      color: AppColors.grey100,
                                      height: 10,
                                      width: 10,
                                    ),
                                  ),
                                ),
                              ),
                              VerticalMargin(20),
                              // Forget Details and Biometrics in Row
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TextButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      overlayColor: MaterialStateProperty.all(
                                          Colors.transparent),
                                    ),
                                    child: Text(
                                      AppTexts.forgetDetails,
                                      style: Config.b2(context).copyWith(
                                        fontSize: 14,
                                        color: AppColors.grey100,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  TextButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      overlayColor: MaterialStateProperty.all(
                                          Colors.transparent),
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          AppTexts.biometrics,
                                          style: Config.h2(context).copyWith(
                                            fontSize: 14,
                                            color: AppColors.primaryColor,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        HorizontalMargin(5),
                                        SvgPicture.asset(
                                          Config.isAndroid
                                              ? AppIcons.fingerPrint
                                              : AppIcons.faceId,
                                          width: 20,
                                          height: 20,
                                          color: AppColors.primaryColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),

                              VerticalMargin(10),
                              // Login Button
                              AppButton(
                                text: AppTexts.login,
                                onTap: () {
                                  //FIXME: Navigate to login screen
                                },
                                textColor: AppColors.white100,
                                color: AppColors.primaryColor,
                              ),
                            ]))))));
  }
}
