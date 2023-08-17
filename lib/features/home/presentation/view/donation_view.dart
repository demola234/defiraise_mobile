part of '../_home.dart';

class DonationView extends ConsumerStatefulWidget {
  final Datum? campaign;
  const DonationView({this.campaign, super.key});

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
            isBack: true,
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
                onTap: () {
                  context.pushNamed(RouteConstants.amountToDonate,
                      queryParameters: {
                        "campaignId": widget.campaign!.id.toString(),
                        "campaignName": widget.campaign!.title,
                        "campaignAddress": widget.campaign!.user![0].address,
                        "goal": widget.campaign!.goal.toString(),
                      });
                },
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
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: CachedNetworkImage(
                          imageUrl: widget.campaign!.image,
                          fit: BoxFit.cover,
                          height: 240,
                          placeholder: (context, url) => Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.grey100,
                              ),
                              child: Shimmer(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    AppColors.grey100,
                                    AppColors.white100,
                                  ],
                                ),
                                child: Container(
                                  height: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              )),
                          errorWidget: (context, url, error) {
                            return Image.asset(
                              AppImages.avatar(1),
                              height: 12,
                              fit: BoxFit.cover,
                              width: 12,
                            );
                          }),
                    ),
                  ),
                  VerticalMargin(30),
                  Text(
                    widget.campaign!.title,
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
                            '${widget.campaign!.totalNumber} Donor${widget.campaign!.totalNumber > 1 ? "s" : ""}',
                            style: Config.b3(context).copyWith(
                              color: AppColors.black100,
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
                            '${widget.campaign!.totalAmountDonated / 1000000000000000000} Eth Raised From ${widget.campaign!.goal / 1000000000000000000} Eth',
                            style: Config.b3(context).copyWith(
                              color: AppColors.black100,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  VerticalMargin(25),
                  linearPercentage(widget.campaign!.totalAmountDonated,
                      widget.campaign!.goal, _controller, context,
                      width: context.screenWidth() * 0.9),
                  VerticalMargin(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            AppIcons.ether,
                            height: 16,
                            color: AppColors.grey300,
                          ),
                          HorizontalMargin(4),
                          Text(
                            '${(widget.campaign!.totalAmountDonated / 1000000000000000000)}',
                            style: Config.b2(context).copyWith(
                              color: AppColors.black100,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            ' of ${(widget.campaign!.goal / 1000000000000000000)} Eth',
                            style: Config.b1(context).copyWith(
                              color: AppColors.secondaryColor,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            DateTime.tryParse(widget.campaign!.deadline!)!
                                .endTime(),
                            style: Config.b3(context).copyWith(
                              color: AppColors.black100,
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  VerticalMargin(20),
                  Text(
                    AppTexts.organizedBy,
                    style: Config.h1(context).copyWith(
                      color: AppColors.black100,
                      fontSize: 16,
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
                        CachedNetworkImage(
                            imageUrl: widget.campaign!.user![0].avatar!,
                            fit: BoxFit.cover,
                            height: 60,
                            width: 60,
                            placeholder: (context, url) => LoadingImage(),
                            errorWidget: (context, url, error) {
                              return Image.asset(
                                AppImages.avatar(1),
                                height: 20,
                                fit: BoxFit.cover,
                                width: 20,
                              );
                            }),
                        HorizontalMargin(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.campaign!.user![0].username == ''
                                  ? 'Anonymous'
                                  : widget.campaign!.user![0].username,
                              style: Config.h1(context).copyWith(
                                color: AppColors.white100,
                                fontSize: 15,
                              ),
                            ),
                            VerticalMargin(2),
                          ],
                        )
                      ],
                    ),
                  ),
                  widget.campaign!.donations!.isNotEmpty
                      ? VerticalMargin(20)
                      : SizedBox.shrink(),
                  widget.campaign!.donations!.isNotEmpty
                      ? Text(
                          '${widget.campaign!.totalNumber} people have just made a donation',
                          style: Config.b3(context).copyWith(
                            color: AppColors.black100,
                            fontSize: 10,
                          ),
                        )
                      : SizedBox.shrink(),
                  widget.campaign!.donations!.isNotEmpty
                      ? VerticalMargin(10)
                      : SizedBox.shrink(),
                  widget.campaign!.donations!.isNotEmpty
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 60,
                              width: context.screenWidth() * 0.55,
                              child: Stack(
                                children: List.generate(
                                  widget.campaign!.donations!.length,
                                  (index) => Positioned(
                                    left: index * 20.0,
                                    child: CachedNetworkImage(
                                        imageUrl: widget
                                            .campaign!.donations![0].image,
                                        fit: BoxFit.cover,
                                        height: 60,
                                        width: 60,
                                        placeholder: (context, url) =>
                                            LoadingImage(),
                                        errorWidget: (context, url, error) {
                                          return Image.asset(
                                            AppImages.avatar(1),
                                            height: 20,
                                            fit: BoxFit.cover,
                                            width: 20,
                                          );
                                        }),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                context.pushNamed(RouteConstants.viewDonors,
                                    queryParameters: {
                                      'campaignId':
                                          widget.campaign!.id.toString()
                                    });
                              },
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 15),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: AppColors.secondaryColor,
                                ),
                                child: Center(
                                  child: Text(
                                    AppTexts.viewDonations,
                                    style: Config.b1(context).copyWith(
                                      color: AppColors.white100,
                                      fontSize: 10,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      : SizedBox.shrink(),
                  VerticalMargin(20),
                  Text(
                    AppTexts.aboutDonation,
                    style: Config.h1(context).copyWith(
                      color: AppColors.black100,
                      fontSize: 16,
                    ),
                  ),
                  VerticalMargin(10),
                  Text(
                    widget.campaign!.description,
                    // justifying text
                    textAlign: TextAlign.justify,
                    style: Config.b3(context).copyWith(
                      color: AppColors.grey300,
                      fontSize: 10,
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
