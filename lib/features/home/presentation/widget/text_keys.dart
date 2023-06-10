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
        padding: const EdgeInsets.all(14.0),
        minWidth: 64.0,
        height: 64.0,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: Config.b1(context).copyWith(
              fontSize: 16.0,
              color: AppColors.white100,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
