part of '../home.dart';

class ConfirmDonationDetailsScreen extends ConsumerStatefulWidget {
  const ConfirmDonationDetailsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ConfirmDonationDetailsScreenState();
}

class _ConfirmDonationDetailsScreenState
    extends ConsumerState<ConfirmDonationDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white200,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: DeFiRaiseAppBar(
          title: AppTexts.confirmDonation,
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
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25),
      child: Column(
        children: [
          VerticalMargin(20),
          _buildDonationAmount(),
          VerticalMargin(20),
          _buildDetails(),
          VerticalMargin(20),
          _buildDonationTransaction(),
          VerticalMargin(20),
          _buildTotalAmount(),
          VerticalMargin(20),
          _buildDonationButton(),
          // VerticalMargin(20),
        ],
      ),
    );
  }

  _buildDonationButton() {
    return AppButton(
        text: "Make Donation",
        textColor: AppColors.white100,
        color: AppColors.primaryColor,
        isRounded: true,
        onTap: () {});
  }

  _buildTotalAmount() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Total Amount',
          style: Config.h3(context).copyWith(
            color: AppColors.black100,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        VerticalMargin(5),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SvgPicture.asset(
                AppIcons.ether,
                height: 20,
                width: 20,
              ),
            ),
            HorizontalMargin(5),
            Text(
              '0.3342 Eth',
              style: Config.h3(context).copyWith(
                color: AppColors.secondaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        )
      ],
    );
  }

  _buildDonationTransaction() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Transaction Details',
          style: Config.h3(context).copyWith(
            color: AppColors.black100,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        VerticalMargin(20),
        Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.white200,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: AppColors.grey200,
              width: 1,
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Amount: ',
                      style: Config.h3(context).copyWith(
                        color: AppColors.black100,
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                    HorizontalMargin(5),
                    Text(
                      '0.3 Eth',
                      style: Config.h3(context).copyWith(
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                VerticalMargin(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Gas Fees: ',
                      style: Config.h3(context).copyWith(
                        color: AppColors.black100,
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                    HorizontalMargin(5),
                    Text(
                      '0.00042Eth',
                      style: Config.h3(context).copyWith(
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
                VerticalMargin(5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Transaction Fees: ',
                      style: Config.h3(context).copyWith(
                        color: AppColors.black100,
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                    HorizontalMargin(5),
                    Text(
                      '1.000000007 Gwei (0.000000001000000007 ETH)',
                      style: Config.h3(context).copyWith(
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  _buildDetails() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your Details',
          style: Config.h3(context).copyWith(
            color: AppColors.black100,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        VerticalMargin(20),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: AppColors.black100,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(
                  AppImages.avatar(1),
                ),
              ),
              HorizontalMargin(15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'David Alnord',
                    style: Config.h3(context).copyWith(
                      color: AppColors.white100,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  VerticalMargin(5),
                  Text(
                    '0xEDc7d973cA6eE138A3210664639c2F2c5283309D',
                    style: Config.h3(context).copyWith(
                      color: AppColors.white200,
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  _buildDonationAmount() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: SvgPicture.asset(
              AppIcons.ether,
              height: 20,
              width: 20,
            ),
          ),
          HorizontalMargin(10),
          Text(
            '0.3 ETH',
            style: Config.b1(context).copyWith(
              color: AppColors.black100,
              fontSize: 35,
            ),
          ),
        ],
      ),
    );
  }

  // Widget _buildConfirmButton() {}
}
