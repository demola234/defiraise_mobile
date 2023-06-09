part of '../home.dart';

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
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 15.0,
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
          const SizedBox(height: 16.0),
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
          const SizedBox(height: 16.0),
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
          const SizedBox(height: 16.0),
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
                  padding: const EdgeInsets.all(14.0),
                  minWidth: 64.0,
                  height: 64.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "●",
                      style: Config.h1(context).copyWith(
                        fontSize: 16.0,
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
                  padding: const EdgeInsets.all(16.0),
                  minWidth: 64.0,
                  height: 64.0,
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
