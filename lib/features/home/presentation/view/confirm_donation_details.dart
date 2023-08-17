part of '../_home.dart';

class ConfirmDonationDetailsScreen extends ConsumerStatefulWidget {
  final String address;
  final String amount;
  final String campaignId;
  final String campaignName;
  final String amountInUsd;
  const ConfirmDonationDetailsScreen(
      {required this.address,
      required this.amount,
      required this.campaignId,
      required this.campaignName,
      required this.amountInUsd,
      super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ConfirmDonationDetailsScreenState();
}

class _ConfirmDonationDetailsScreenState
    extends ConsumerState<ConfirmDonationDetailsScreen>
    with LoadingOverlayMixin {
  OverlayEntry? _overlayEntry;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white200,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: DeFiRaiseAppBar(
          title: AppTexts.confirmDonation,
          isBack: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            _buildDonationDetails(),
            // _buildConfirmButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildDonationDetails() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
      child: Column(
        children: [
          VerticalMargin(20),
          _buildDonationAmount(),
          VerticalMargin(60),
          _buildDonationTransaction(),
          VerticalMargin(50),
          _buildDonationButton(),
          VerticalMargin(20),
          _note(),
        ],
      ),
    );
  }

  _note() {
    return Text(
      '* The transaction fee may vary depending on the network congestion.',
      style: Config.h3(context).copyWith(
        color: AppColors.grey100,
        fontWeight: FontWeight.w500,
        fontSize: 10,
      ),
    );
  }

  _buildDonationButton() {
    return BlocListener<MakeDonationsBloc, MakeDonationsState>(
      listener: _listener,
      child: AppButton(
          text: "Make Donation",
          textColor: AppColors.white100,
          color: AppColors.primaryColor,
          isRounded: false,
          onTap: () {
            BlocProvider.of<MakeDonationsBloc>(context).add(
              DonateEvent(
                campaignId: widget.campaignId,
                amount: widget.amount,
              ),
            );
          }),
    );
  }

  _buildDonationTransaction() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Receiver ',
                    style: Config.h3(context).copyWith(
                      color: AppColors.grey100,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                  HorizontalMargin(5),
                  InkWell(
                    onTap: () {
                      Clipboard.setData(ClipboardData(text: widget.address));
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Copied to Clipboard'),
                        ),
                      );
                    },
                    child: Row(
                      children: [
                        Text(
                          widget.address,
                          style: Config.h3(context).copyWith(
                            color: AppColors.black200,
                            fontWeight: FontWeight.w500,
                            fontSize: 10,
                          ),
                        ),
                        HorizontalMargin(5),
                        SvgPicture.asset(
                          AppIcons.copyPaste,
                          height: 15,
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              VerticalMargin(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fees',
                    style: Config.h3(context).copyWith(
                      color: AppColors.grey100,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                  HorizontalMargin(5),
                  Text(
                    '${(double.parse(widget.amount) / 5).toStringAsPrecision(1)} Eth',
                    style: Config.h3(context).copyWith(
                      color: AppColors.black200,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              VerticalMargin(25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Total amount to be deducted',
                    style: Config.h3(context).copyWith(
                      color: AppColors.grey100,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                  HorizontalMargin(5),
                  Text(
                    '${(double.parse(widget.amount) + double.parse(widget.amount) / 5).toStringAsPrecision(3)} ETH',
                    style: Config.h3(context).copyWith(
                      color: AppColors.black200,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  _buildDonationAmount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'You are about to Donate',
            style: Config.b3(context).copyWith(
              color: AppColors.black200,
              fontWeight: FontWeight.w100,
              fontSize: 12,
            ),
          ),
          VerticalMargin(20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                widget.amount,
                style: Config.b1(context).copyWith(
                  fontSize: 19.0,
                  color: AppColors.black100,
                  fontWeight: FontWeight.bold,
                ),
              ),
              HorizontalMargin(2),
              Text(
                'ETH',
                style: Config.b1(context).copyWith(
                  fontSize: 19.0,
                  color: AppColors.black100,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          VerticalMargin(2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'USD ${double.parse(widget.amountInUsd).toStringAsFixed(2)}',
                style: Config.b2(context).copyWith(
                  fontSize: 14.0,
                  color: AppColors.secondaryColor,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _listener(BuildContext context, MakeDonationsState state) {
    state.maybeWhen(orElse: () {
      _overlayEntry?.remove();
    }, loading: () {
      _overlayEntry = showLoadingOverlay(context, _overlayEntry);
    }, error: (message) {
      _overlayEntry?.remove();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: AppColors.errorColor,
        ),
      );
    }, loaded: (response) {
      _overlayEntry?.remove();

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const SuccessScreen(),
        ),
      );
    });
  }
}
