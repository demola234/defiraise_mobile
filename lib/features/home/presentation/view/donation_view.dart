part of '../_home.dart';

class DonationView extends ConsumerStatefulWidget {
  const DonationView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _DonationViewState();
}

class _DonationViewState extends ConsumerState<DonationView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _controller.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(context.screenWidth(), 60),
          child: DeFiRaiseAppBar(
            title: AppTexts.donation,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
          width: context.screenWidth() * 0.9,
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.black100,
                  ),
                  child: Center(
                    child: Text(
                      AppTexts.donate,
                      style: Config.b1(context).copyWith(
                        color: AppColors.white100,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.white100,
                    border: Border.all(color: AppColors.black100),
                  ),
                  child: Center(
                    child: Text(
                      AppTexts.share,
                      style: Config.b1(context).copyWith(
                        color: AppColors.black100,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )),
      body: SafeArea(
        child: SingleChildScrollView(
          child: FadeInUp(
            duration: const Duration(milliseconds: 700),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  VerticalMargin(10),
                  Container(
                    height: 240,
                    width: context.screenWidth(),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: AppColors.grey200,
                    ),
                  ),
                  VerticalMargin(30),
                  Text(
                    'India Train Crash: How to Help',
                    style: TextStyle(
                        color: AppColors.black100,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  VerticalMargin(10),
                  Row(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.group, height: 20),
                          HorizontalMargin(4),
                          Text(
                            '733 Donors',
                            style: Config.b1(context).copyWith(
                              color: AppColors.grey300,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      HorizontalMargin(10),
                      Row(
                        children: [
                          SvgPicture.asset(AppIcons.bitcoinGp, height: 16),
                          HorizontalMargin(4),
                          Text(
                            '1.3 Eth Raised From 3.4 Eth',
                            style: Config.b1(context).copyWith(
                              color: AppColors.grey300,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  VerticalMargin(25),
                  linearPercentage(80, 100, _controller, context),
                  VerticalMargin(20),
                  Row(
                    children: [
                      SvgPicture.asset(AppIcons.ether, height: 16),
                      HorizontalMargin(4),
                      Text(
                        '1.3 Etherium',
                        style: Config.b1(context).copyWith(
                          color: AppColors.grey300,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        ' of 3.4 Etherium',
                        style: Config.b1(context).copyWith(
                          color: AppColors.secondaryColor,
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  VerticalMargin(5),
                  Row(
                    children: [
                      Text(
                        'Ends in:',
                        style: Config.b1(context).copyWith(
                          color: AppColors.grey300,
                          fontSize: 15,
                        ),
                      ),
                      HorizontalMargin(4),
                      Text(
                        '2 Days 4 Hours 30 Minutes',
                        style: Config.b1(context).copyWith(
                          color: AppColors.black100,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  VerticalMargin(20),
                  Text(
                    AppTexts.organizedBy,
                    style: Config.h1(context).copyWith(
                      color: AppColors.black100,
                      fontSize: 20,
                    ),
                  ),
                  VerticalMargin(10),
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
                          backgroundImage: AssetImage(AppImages.avatar(1)),
                        ),
                        HorizontalMargin(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Rahul Gupta',
                              style: Config.h1(context).copyWith(
                                color: AppColors.white100,
                                fontSize: 15,
                              ),
                            ),
                            VerticalMargin(2),
                            Text(
                              'Founder, DeFiRaise',
                              style: Config.b1(context).copyWith(
                                color: AppColors.grey300,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  VerticalMargin(20),
                  Text(
                    '733 people have just made a donation',
                    style: Config.h1(context).copyWith(
                      color: AppColors.black100,
                      fontSize: 12,
                    ),
                  ),
                  VerticalMargin(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 60,
                        width: context.screenWidth() * 0.55,
                        child: Stack(
                          children: List.generate(
                            5,
                            (index) => Positioned(
                              left: index * 20.0,
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: Colors.transparent,
                                backgroundImage:
                                    AssetImage(AppImages.avatar(index + 1)),
                              ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.secondaryColor,
                          ),
                          child: Center(
                            child: Text(
                              AppTexts.viewDonations,
                              style: Config.b1(context).copyWith(
                                color: AppColors.white100,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  VerticalMargin(20),
                  Text(
                    AppTexts.aboutDonation,
                    style: Config.h1(context).copyWith(
                      color: AppColors.black100,
                      fontSize: 20,
                    ),
                  ),
                  VerticalMargin(10),
                  Text(
                    AppTexts.loremIpsum,
                    // justifying text
                    textAlign: TextAlign.justify,
                    style: Config.b1(context).copyWith(
                      color: AppColors.grey300,
                      fontSize: 12,
                    ),
                  ),
                  VerticalMargin(60),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  donorsImages() {
    return Stack(
      children: List.generate(
        5,
        (index) => Positioned(
          left: index - 20.0,
          child: CircleAvatar(
            radius: 10,
            backgroundImage: AssetImage(AppImages.avatar(index)),
          ),
        ),
      ),
    );
  }
}
