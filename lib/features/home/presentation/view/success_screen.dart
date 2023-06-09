part of '../home.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Column(
            children: [
              VerticalMargin(50),
              // _buildSuccessIcon(),
              // VerticalMargin(20),
              // _buildSuccessText(),
              // VerticalMargin(20),
              // _buildSuccessMessage(),
              // VerticalMargin(20),
              // _buildSuccessButton(),
              // VerticalMargin(20),
            ],
          ),
        ),
      ),
    );
  }
}
