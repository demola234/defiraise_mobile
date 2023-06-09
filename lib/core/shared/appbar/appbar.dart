// 🐦 Flutter imports:
import 'package:defiraiser_mobile/core/global/constants/app_icons.dart';
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/global/themes/color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeFiRaiseAppBar extends StatelessWidget {
  final String? title;
  final List<Widget>? actions;

  const DeFiRaiseAppBar({
    this.title,
    this.actions,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.white200,
      elevation: 0,
      centerTitle: true,
      title: Text(title ?? '',
          style: Config.b1(context).copyWith(
            color: AppColors.primaryColor,
            fontWeight: FontWeight.w400,
            fontSize: 18,
          )),
      actions: actions,
      leading: IconButton(
        icon: SvgPicture.asset(AppIcons.back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
