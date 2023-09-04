part of '../_home.dart';

class CustomKeyboard extends StatelessWidget {
  final ValueSetter<String> onTap;
  final VoidCallback onBackspaceTap;
  final VoidCallback onBackspaceLongPress;

  const CustomKeyboard({
    Key? key,
    required this.onTap,
    required this.onBackspaceTap,
    required this.onBackspaceLongPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20.sp,
        horizontal: 15.sp,
      ),
      child: Column(
        children: [
          Row(
            children: [
              KeyText(
                onKeyTap: (value) {
                  onTap(value);
                },
                text: '1',
              ),
              KeyText(
                onKeyTap: (value) {
                  onTap(value);
                },
                text: '2',
              ),
              KeyText(
                onKeyTap: (value) {
                  onTap(value);
                },
                text: '3',
              ),
            ],
          ),
          SizedBox(height: 16.sp),
          Row(
            children: [
              KeyText(
                onKeyTap: (value) {
                  onTap(value);
                },
                text: '4',
              ),
              KeyText(
                onKeyTap: (value) {
                  onTap(value);
                },
                text: '5',
              ),
              KeyText(
                onKeyTap: (value) {
                  onTap(value);
                },
                text: '6',
              ),
            ],
          ),
          SizedBox(height: 16.sp),
          Row(
            children: [
              KeyText(
                onKeyTap: (value) {
                  onTap(value);
                },
                text: '7',
              ),
              KeyText(
                onKeyTap: (value) {
                  onTap(value);
                },
                text: '8',
              ),
              KeyText(
                onKeyTap: (value) {
                  onTap(value);
                },
                text: '9',
              ),
            ],
          ),
          SizedBox(height: 16.sp),
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    onTap(".");
                    HapticFeedback.mediumImpact();
                    SystemSound.play(SystemSoundType.alert);
                  },
                  elevation: 0.0,
                  padding: EdgeInsets.all(14.sp),
                  minWidth: 64.sp,
                  height: 64.sp,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "●",
                      style: Config.h1(context).copyWith(
                        fontSize: 16.sp,
                        color: AppColors.black100,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              KeyText(
                onKeyTap: (value) {
                  onTap(value);
                  HapticFeedback.mediumImpact();
                  SystemSound.play(SystemSoundType.alert);
                },
                text: '0',
              ),
              Expanded(
                flex: 1,
                child: MaterialButton(
                  onPressed: onBackspaceTap,
                  onLongPress: onBackspaceLongPress,
                  shape: const CircleBorder(),
                  elevation: 0.0,
                  padding: EdgeInsets.all(16.sp),
                  minWidth: 64.sp,
                  height: 64.sp,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      AppIcons.keyBack,
                      color: AppColors.black100,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
