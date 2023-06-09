part of '../home.dart';

class LatestFundraiserWidget extends ConsumerStatefulWidget {
  const LatestFundraiserWidget({
    super.key,
  });

  @override
  ConsumerState<LatestFundraiserWidget> createState() =>
      _LatestFundraiserWidgetState();
}

class _LatestFundraiserWidgetState extends ConsumerState<LatestFundraiserWidget>
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
    return SliverToBoxAdapter(
      child: Column(
        children: [
          VerticalMargin(20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    AppTexts.latestFundRaiser,
                    style: TextStyle(
                        color: AppColors.black100,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          VerticalMargin(20),
          SizedBox(
              width: context.screenWidth(),
              height: 320,
              child: ListView.builder(
                  itemCount: 7,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) {
                    return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 1000),
                        child: SlideAnimation(
                            verticalOffset: 50.0,
                            child: FadeInAnimation(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Container(
                                  width: 250,
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: AppColors.white100,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 160,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: AppColors.grey200
                                              .withOpacity(0.5),
                                        ),
                                      ),
                                      VerticalMargin(10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "By",
                                            style: Config.b2(context).copyWith(
                                              fontSize: 14,
                                              color: AppColors.grey100,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          HorizontalMargin(5),
                                          CircleAvatar(
                                            radius: 10,
                                            backgroundColor: Colors.transparent,
                                            backgroundImage:
                                                AssetImage(AppImages.avatar(1)),
                                          ),
                                          HorizontalMargin(5),
                                          Text(
                                            AppTexts.placeHolderName,
                                            style: Config.b2(context).copyWith(
                                              fontSize: 14,
                                              color: AppColors.black100,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      VerticalMargin(10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "India Train Crash: How to Help",
                                            style: Config.b2(context).copyWith(
                                              fontSize: 14,
                                              color: AppColors.black100,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      VerticalMargin(10),
                                      linearPercentage(
                                          80, 100, _controller, context),
                                      VerticalMargin(10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              SvgPicture.asset(AppIcons.ether),
                                              HorizontalMargin(5),
                                              Text(
                                                "1.3",
                                                style:
                                                    Config.b2(context).copyWith(
                                                  fontSize: 14,
                                                  color: AppColors.black100,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              HorizontalMargin(5),
                                              Text(
                                                "ETH",
                                                style:
                                                    Config.b2(context).copyWith(
                                                  fontSize: 14,
                                                  color: AppColors.grey100,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            "31 days left",
                                            style: Config.b2(context).copyWith(
                                              fontSize: 10,
                                              color: AppColors.grey100,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      VerticalMargin(10),
                                    ],
                                  ),
                                ),
                              ),
                            )));
                  }))),
          VerticalMargin(30),
        ],
      ),
    );
  }
}
