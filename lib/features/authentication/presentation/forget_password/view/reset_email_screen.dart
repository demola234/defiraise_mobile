import 'package:defiraiser_mobile/core/global/constants/app_texts.dart';
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/global/themes/color_scheme.dart';
import 'package:defiraiser_mobile/core/shared/appbar/appbar.dart';
import 'package:defiraiser_mobile/core/shared/button/buttons.dart';
import 'package:defiraiser_mobile/core/shared/textfield/textfield.dart';
import 'package:defiraiser_mobile/core/utils/input_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ResetEmailScreen extends ConsumerStatefulWidget {
  const ResetEmailScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ResetEmailScreenState();
}

class _ResetEmailScreenState extends ConsumerState<ResetEmailScreen>
    with InputValidationMixin {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _emailController = TextEditingController();
  final FocusNode _emailNode = FocusNode();
  final isValidate = ValueNotifier<bool>(false);

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
                              Text(AppTexts.resetPassword,
                                  style: Config.h2(context).copyWith()),
                              VerticalMargin(5),
                              // 📝 Note: The code below is the same as the one in the previous snippet.
                              Text(AppTexts.resetPasswordDesc,
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

                              VerticalMargin(10),
                              // Login Button
                              AppButton(
                                text: AppTexts.resetPasswordButton,
                                onTap: () {
                                  //FIXME: Navigate to login screen
                                },
                                textColor: AppColors.white100,
                                color: AppColors.primaryColor,
                              ),
                            ]))))));
  }
}
