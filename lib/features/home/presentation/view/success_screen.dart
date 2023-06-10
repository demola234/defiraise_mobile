part of '../_home.dart';

class SuccessScreen extends ConsumerStatefulWidget {
  const SuccessScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends ConsumerState<SuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // VerticalMargin(100),
              Spacer(),
              _buildSuccessIcon(),
              VerticalMargin(40),
              _buildSuccessText(),
              Spacer(),
              _buildSuccessButton(),
            ],
          ),
        ),
      ),
    );
  }

  _buildSuccessButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: AppButton(
        text: AppTexts.continueText,
        onTap: () {},
        textColor: AppColors.white200,
        color: AppColors.primaryColor,
        isRounded: true,
      ),
    );
  }

  _buildSuccessIcon() {
    return Align(
      alignment: Alignment.center,
      child: Lottie.asset(
        AppJsons.success,
        width: 200,
        height: 200,
        reverse: false,
        repeat: false,
        fit: BoxFit.cover,
      ),
    );
  }

  _buildSuccessText() {
    return Column(
      children: [
        Text(
          AppTexts.success,
          style: Config.h3(context).copyWith(
            color: AppColors.secondaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        VerticalMargin(10),
        Text(
          AppTexts.successDesc,
          style: Config.b1(context).copyWith(
            color: AppColors.grey300,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
