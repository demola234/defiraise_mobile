import 'package:defiraiser_mobile/core/global/constants/app_texts.dart';
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/global/themes/color_scheme.dart';
import 'package:defiraiser_mobile/core/routers/routes_constants.dart';
import 'package:defiraiser_mobile/core/shared/button/buttons.dart';
import 'package:defiraiser_mobile/core/shared/textfield/textfield.dart';
import 'package:defiraiser_mobile/core/utils/input_validation.dart';
import 'package:defiraiser_mobile/core/utils/loading_overlay.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/signup/states/bloc/sign_up_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CreateAccountScreen extends ConsumerStatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateAccountScreenState();
}

class _CreateAccountScreenState extends ConsumerState<CreateAccountScreen>
    with InputValidationMixin, LoadingOverlayMixin {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final isValidate = ValueNotifier<bool>(false);
  final FocusNode _emailNode = FocusNode();
  final FocusNode _firstNameNode = FocusNode();
  OverlayEntry? _overlayEntry;

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
                  BlocConsumer<SignUpBloc, SignUpState>(
                    listener: (context, state) {
                      // TODO: implement listener
                    },
                    builder: (context, state) {
                      return AppTextField(
                        controller: _firstNameController,
                        hintText: AppTexts.firstName,
                        inputType: TextInputType.name,
                        textCapitalization: TextCapitalization.none,
                        focusNode: _firstNameNode,
                        onChanged: (input) {
                          context
                              .read<SignUpBloc>()
                              .add(CheckUsernameEvent(username: input));
                        },
                        suffixIcon: state.maybeWhen(
                          orElse: () => Icon(
                            Icons.info,
                            color: Colors.orange,
                          ),
                          checkUsernameError: (check) => Icon(
                            Icons.error,
                            color: AppColors.errorColor,
                          ),
                          checkedUserLoaded: (check) => check == false
                              ? Icon(
                                  Icons.check_box,
                                  color: AppColors.successColor,
                                )
                              : Icon(
                                  Icons.error,
                                  color: AppColors.errorColor,
                                ),
                        ),
                        textInputAction: TextInputAction.next,
                        validator: isValidate.value
                            ? combine([
                                withMessage(AppTexts.fieldEmpty("First Name"),
                                    isTextEmpty),
                              ])
                            : null,
                      );
                    },
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
                  BlocConsumer<SignUpBloc, SignUpState>(
                    listener: _listener,
                    builder: (context, state) {
                      return AppButton(
                        text: AppTexts.createAccountButton,
                        onTap: () {
                          _emailNode.unfocus();
                          _firstNameNode.unfocus();
                          //FIXME: Navigate to login screen

                          context.read<SignUpBloc>().add(RegisterUser(
                              email: _emailController.text,
                              username: _firstNameController.text));
                        },
                        textSize: 12,
                        textColor: AppColors.white100,
                        color: AppColors.primaryColor,
                      );
                    },
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

  void _listener(BuildContext context, SignUpState state) {
    state.maybeWhen(orElse: () {
      _overlayEntry?.remove();
    }, loading: () {
      _overlayEntry = showLoadingOverlay(context, _overlayEntry);
    }, registrationError: (message) {
      _overlayEntry?.remove();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: AppColors.errorColor,
        ),
      );
    }, registrationSuccessful: (message) {
      _overlayEntry?.remove();
      context.goNamed(RouteConstants.verifyEmail, queryParameters: {
        "username": _firstNameController.text,
        "email": _emailController.text
      });
    });
  }
}
