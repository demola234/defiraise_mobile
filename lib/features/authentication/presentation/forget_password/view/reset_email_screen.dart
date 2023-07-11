import 'package:defiraiser_mobile/core/global/constants/app_texts.dart';
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/global/themes/color_scheme.dart';
import 'package:defiraiser_mobile/core/routers/routes_constants.dart';
import 'package:defiraiser_mobile/core/shared/appbar/appbar.dart';
import 'package:defiraiser_mobile/core/shared/button/buttons.dart';
import 'package:defiraiser_mobile/core/shared/textfield/textfield.dart';
import 'package:defiraiser_mobile/core/utils/input_validation.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/forget_password/state/bloc/forget_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
                              // VerticalMargin(20),
                              Text(AppTexts.resetPassword,
                                  style: Config.h2(context).copyWith(
                                    fontSize: 24,
                                  )),
                              VerticalMargin(5),
                              // 📝 Note: The code below is the same as the one in the previous snippet.
                              Text(AppTexts.resetPasswordDesc,
                                  style: Config.b3(context).copyWith(
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
                              BlocConsumer<ForgetPasswordBloc,
                                  ForgetPasswordState>(
                                listener: _listener,
                                builder: (context, state) {
                                  return AppButton(
                                    text: AppTexts.resetPasswordButton,
                                    onTap: () {
                                      context.read<ForgetPasswordBloc>().add(
                                          ResetPasswordEvent(
                                              email: _emailController.text));
                                    },
                                    textSize: 12,
                                    textColor: AppColors.white100,
                                    color: AppColors.primaryColor,
                                  );
                                },
                              ),
                            ]))))));
  }

  void _listener(BuildContext context, ForgetPasswordState state) {
    state.maybeWhen(
        orElse: () {},
        resetPasswordError: (message) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(message),
              backgroundColor: AppColors.errorColor,
            ),
          );
        },
        resetPasswordSuccess: (response) {
          context.goNamed(RouteConstants.resetOtp, queryParameters: {
            "email": _emailController.text,
          });
        });
  }
}
