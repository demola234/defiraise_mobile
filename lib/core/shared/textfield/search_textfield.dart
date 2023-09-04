// 🐦 Flutter imports:
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/global/themes/color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// 🌎 Project imports:

class SearchTextField extends StatelessWidget {
  final String? labelText;
  final String? initialValue;
  final Widget? suffixIcon;
  final TextInputType? inputType;
  final String? Function(String? input)? validator;
  final Function(String input)? onChanged;
  final Function(String?)? onSaved;
  final Function(String)? onFieldSubmitted;
  final TextCapitalization textCapitalization;
  final Function()? onEditingComplete;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final int? maxLines;
  final FocusNode? focusNode;
  final bool enableInteractiveSelection;
  final TextAlign textAlign;
  final String? hintText;
  final String label;
  final bool? obscureText;
  final Widget? prefixIcon;
  final TextEditingController? controller;
  final bool enabled;
  final bool? readOnly;
  final void Function()? onTap;

  const SearchTextField(
      {Key? key,
      this.labelText,
      this.initialValue,
      this.suffixIcon,
      this.inputType,
      this.textCapitalization = TextCapitalization.none,
      this.onChanged,
      this.onEditingComplete,
      this.onSaved,
      this.validator,
      this.inputFormatters,
      this.label = '',
      this.maxLines = 1,
      this.focusNode,
      this.textAlign = TextAlign.start,
      this.obscureText = false,
      this.enableInteractiveSelection = true,
      this.hintText,
      this.prefixIcon,
      this.controller,
      this.readOnly = false,
      this.onTap,
      this.enabled = true,
      this.onFieldSubmitted,
      this.textInputAction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: controller,
          onSaved: onSaved,
          onEditingComplete: onEditingComplete,
          cursorColor: AppColors.grey100.withOpacity(0.5),
          obscureText: obscureText!,
          enableInteractiveSelection: enableInteractiveSelection,
          maxLines: maxLines,
          readOnly: readOnly!,
          focusNode: focusNode,
          enableIMEPersonalizedLearning: true,
          enableSuggestions: true,
          onFieldSubmitted: onFieldSubmitted,
          textCapitalization: textCapitalization,
          obscuringCharacter: '*',
          inputFormatters: inputFormatters,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          initialValue: initialValue,
          keyboardType: inputType,
          textAlign: textAlign,
          textInputAction: textInputAction,
          enabled: enabled,
          style: Config.b1(context).copyWith(
            color: AppColors.primaryColor,
          ),
          decoration: InputDecoration(
              fillColor: AppColors.white100,
              focusColor: AppColors.white100,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(
                  color: AppColors.grey100.withOpacity(0.5),
                  width: 1.sp,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(
                  color: AppColors.grey100.withOpacity(0.5),
                  width: 1.sp,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(
                  color: AppColors.errorColor,
                  width: 1,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(40),
                borderSide: BorderSide(
                  color: AppColors.white100,
                  width: 1.sp,
                ),
              ),
              prefixIcon: prefixIcon,
              suffixIcon: suffixIcon,
              hintText: '$hintText',
              hintStyle: Config.b2(context).copyWith(
                color: AppColors.grey100.withOpacity(0.5),
                fontSize: 16.sp,
              )),
          onChanged: onChanged,
          validator: validator,
          onTap: onTap,
        ),
      ],
    );
  }
}
