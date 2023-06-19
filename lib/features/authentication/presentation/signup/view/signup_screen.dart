import 'package:defiraiser_mobile/core/global/constants/app_texts.dart';
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/global/themes/color_scheme.dart';
import 'package:defiraiser_mobile/core/routers/routes_constants.dart';
import 'package:defiraiser_mobile/core/shared/button/buttons.dart';
import 'package:defiraiser_mobile/core/shared/textfield/textfield.dart';
import 'package:defiraiser_mobile/core/utils/input_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CreateAccountScreen extends ConsumerStatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateAccountScreenState();
}

class _CreateAccountScreenState extends ConsumerState<CreateAccountScreen>
    with InputValidationMixin {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final isValidate = ValueNotifier<bool>(false);
  final FocusNode _emailNode = FocusNode();
  final FocusNode _firstNameNode = FocusNode();

  @override
  void dispose() {
    _emailController.dispose();
    _firstNameController.dispose();
    _emailNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VerticalMargin(50),
                  Text(AppTexts.createAccount,
                      style: Config.h2(context).copyWith(
                        fontSize: 24,
                      )),
                  // 📝 Note: The code below is the same as the one in the previous snippet.
                  Text(AppTexts.createAccountDescription,
                      style: Config.b3(context).copyWith(
                        color: AppColors.grey100,
                      )),
                  VerticalMargin(50),
                  AppTextField(
                    controller: _firstNameController,
                    hintText: AppTexts.firstName,
                    inputType: TextInputType.name,
                    textCapitalization: TextCapitalization.none,
                    focusNode: _firstNameNode,
                    textInputAction: TextInputAction.next,
                    validator: isValidate.value
                        ? combine([
                            withMessage(
                                AppTexts.fieldEmpty("First Name"), isTextEmpty),
                          ])
                        : null,
                  ),
                  VerticalMargin(20),
                  AppTextField(
                    controller: _emailController,
                    hintText: AppTexts.fillEmail,
                    inputType: TextInputType.emailAddress,
                    textCapitalization: TextCapitalization.none,
                    focusNode: _emailNode,
                    textInputAction: TextInputAction.done,
                    validator: isValidate.value
                        ? combine([
                            withMessage(AppTexts.emailInvalid, isInvalidEmail),
                            withMessage(
                                AppTexts.fieldEmpty("Email"), isTextEmpty),
                          ])
                        : null,
                  ),
                  VerticalMargin(20),
                  AppButton(
                    text: AppTexts.createAccountButton,
                    onTap: () {
                      _emailNode.unfocus();
                      _firstNameNode.unfocus();
                      //FIXME: Navigate to login screen
                      context.goNamed(RouteConstants.verifyEmail);
                    },
                    textSize: 12,
                    textColor: AppColors.white100,
                    color: AppColors.primaryColor,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: ButtonStyle(
                          overlayColor: MaterialStateProperty.all(
                            Colors.transparent,
                          ),
                        ),
                        onPressed: () {
                          context.goNamed(RouteConstants.login);
                        },
                        child: Text(
                          AppTexts.alreadyHaveAccount,
                          style: Config.b3(context).copyWith(
                            color: AppColors.secondaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
