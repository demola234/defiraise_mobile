import 'package:defiraiser_mobile/core/global/constants/app_texts.dart';
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/global/themes/color_scheme.dart';
import 'package:defiraiser_mobile/core/shared/appbar/appbar.dart';
import 'package:defiraiser_mobile/core/shared/button/buttons.dart';
import 'package:defiraiser_mobile/core/shared/textfield/textfield.dart';
import 'package:defiraiser_mobile/core/utils/input_validation.dart';
import 'package:defiraiser_mobile/core/utils/loading_overlay.dart';
import 'package:defiraiser_mobile/features/authentication/presentation/signup/states/bloc/sign_up_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EditProfileScreen extends ConsumerStatefulWidget {
  const EditProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen>
    with InputValidationMixin, LoadingOverlayMixin {
  final TextEditingController _userNameController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();
  final isValidate = ValueNotifier<bool>(false);
  final isActive = ValueNotifier<bool>(false);
  final FocusNode _userNameNode = FocusNode();
  OverlayEntry? _overlayEntry;

  @override
  void dispose() {
    _userNameController.dispose();
    _userNameNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(context.screenWidth(), 60),
        child: DeFiRaiseAppBar(
          isBack: true,
          title: AppTexts.editProfile,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BlocConsumer<SignUpBloc, SignUpState>(
                    listener: (context, state) {
                      // TODO: implement listener
                    },
                    builder: (context, state) {
                      return AppTextField(
                        controller: _userNameController,
                        hintText: AppTexts.firstName,
                        inputType: TextInputType.name,
                        textCapitalization: TextCapitalization.none,
                        focusNode: _userNameNode,
                        onChanged: (input) {
                          if (input.isNotEmpty && input.length > 4) {
                            context
                                .read<SignUpBloc>()
                                .add(CheckUsernameEvent(username: input));
                          } else {
                            context
                                .read<SignUpBloc>()
                                .add(CheckUsernameEvent(username: ""));
                          }
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
                  VerticalMargin(20),
                  BlocConsumer<SignUpBloc, SignUpState>(
                    listener: _listener,
                    builder: (context, state) {
                      return AppButton(
                        text: AppTexts.continueTo,
                        isActive: state.maybeWhen(
                          orElse: () => false,
                          checkUsernameError: (check) => false,
                          checkedUserLoaded: (check) {
                            if (_userNameController.text.isNotEmpty &&
                                _userNameController.text.length > 4) {
                              return check == false;
                            }
                            return false;
                          },
                        ),
                        onTap: () {
                          _userNameNode.unfocus();

                          //FIXME: Navigate to login screen
                        },
                        textSize: 12,
                        textColor: AppColors.white100,
                        color: AppColors.primaryColor,
                      );
                    },
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
    }, checkingUsername: () {
      _overlayEntry = showLoadingOverlay(context, _overlayEntry);
    }, checkUsernameError: (message) {
      _overlayEntry?.remove();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: AppColors.errorColor,
        ),
      );
    }, checkedUserLoaded: (message) {
      _overlayEntry?.remove();
    });
  }
}
