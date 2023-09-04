part of '../_home.dart';

class KeyText extends StatelessWidget {
  final String text;
  final ValueSetter<String> onKeyTap;

  const KeyText({
    Key? key,
    required this.text,
    required this.onKeyTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialButton(
        onPressed: () {
          onKeyTap(text);
          HapticFeedback.mediumImpact();
          SystemSound.play(SystemSoundType.alert);
        },
        shape: const CircleBorder(),
        color: AppColors.black200,
        elevation: 0.0,
        padding: EdgeInsets.all(14.sp),
        minWidth: 64.sp,
        height: 64.sp,
        child: Padding(
          padding: EdgeInsets.all(8.sp),
          child: Text(
            text,
            style: Config.b1(context).copyWith(
              fontSize: 16.sp,
              color: AppColors.white100,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
