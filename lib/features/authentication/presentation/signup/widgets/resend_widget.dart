// 🐦 Flutter imports:
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/global/themes/color_scheme.dart';
import 'package:flutter/material.dart';

Row bottomTexts({
  required BuildContext context,
  void Function()? onTap,
  required String buttonText,
  Color? text1Color,
  required String text,
  Color? textColor,
}) {
  return Row(
    children: [
      InkWell(
        onTap: onTap,
        child: Text(
          buttonText,
          style: Config.b2(context).copyWith(
            fontSize: 14,
            color: textColor ?? AppColors.grey100,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}
