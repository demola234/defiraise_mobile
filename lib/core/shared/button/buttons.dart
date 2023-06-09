// 🐦 Flutter imports:
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/global/themes/color_scheme.dart';
import 'package:flutter/material.dart';
// 📦 Package imports:
import 'package:flutter_svg/flutter_svg.dart';
// 🌎 Project imports:

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.color,
    required this.text,
    this.isActive = true,
    this.gradient,
    this.icon,
    this.iconRtr,
    required this.textColor,
    this.textSize = 16,
    this.borderColor,
    this.isRounded = false,
    required this.onTap,
  });
  final Color? color;
  final String text;
  final bool? isActive;
  final bool? isRounded;
  final String? icon;
  final String? iconRtr;
  final Color textColor;
  final double? textSize;
  final bool? gradient;
  final void Function()? onTap;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
      child: Container(
        height: 58,
        width: (context.screenWidth() * 0.85),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(isRounded == true ? 40 : 15),
          border: Border.all(
            width: 1,
            color: borderColor ?? Colors.transparent,
          ),
        ),
        child: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: isActive == true ? onTap : null,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (iconRtr != null)
                SvgPicture.asset(
                  iconRtr!,
                  height: 16,
                  width: 16,
                  color: textColor,
                )
              else
                const SizedBox(),
              Text(
                text,
                style: Config.b1(context).copyWith(
                  color: isActive! ? textColor : AppColors.white100,
                  fontSize: textSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const HorizontalMargin(7),
              if (icon != null)
                SvgPicture.asset(
                  icon!,
                  height: 16,
                  width: 16,
                  color: textColor,
                )
              else
                const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
