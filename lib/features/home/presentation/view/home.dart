part of '../_home.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  final isHide = ValueNotifier<bool>(true);

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white200,
        body: CustomScrollView(slivers: [
          SliverAppBar(
              snap: false,
              automaticallyImplyLeading: false,
              pinned: false,
              floating: true,
              backgroundColor: Colors.transparent,
              actions: [
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: EdgeInsets.only(right: 15.0, top: 10),
                    child: Stack(
                      children: const [],
                    ),
                  ),
                ),
              ],
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.parallax,
                  background: Stack(children: [
                    Container(
                      height: 300,
                      width: context.screenWidth(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40)),
                        image: DecorationImage(
                          image: AssetImage(AppImages.background),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 90,
                      left: 20,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                height: 60,
                                width: context.screenWidth() * 0.73,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: AppColors.white100,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      HorizontalMargin(10),
                                      SvgPicture.asset(AppIcons.search,
                                          color: AppColors.black200,
                                          height: 20,
                                          width: 20),
                                      HorizontalMargin(10),
                                      Text(
                                        AppTexts.searchCampaign,
                                        style: TextStyle(
                                            color: AppColors.black200,
                                            fontSize: 16),
                                      )
                                    ],
                                  ),
                                )),
                            HorizontalMargin(10),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage(AppImages.avatar(1)),
                            )
                          ]),
                    ),
                    Positioned(
                        bottom: 0,
                        left: context.screenWidth() * 0.05,
                        child: Container(
                          height: 170,
                          width: context.screenWidth() * 0.9,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: AppColors.black100,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(AppTexts.balance,
                                  style: Config.b1(context).copyWith(
                                    color: AppColors.white100,
                                  )),
                              VerticalMargin(5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(AppIcons.ether),
                                  HorizontalMargin(10),
                                  Text(isHide.value ? '0.000000' : '●●●●●●●',
                                      style: Config.h2(context).copyWith(
                                        color: AppColors.white100,
                                      )),
                                  HorizontalMargin(10),
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          isHide.value = !isHide.value;
                                        });
                                      },
                                      child: SvgPicture.asset(
                                          isHide.value
                                              ? AppIcons.balanceEye
                                              : AppIcons.balanceEyeClose,
                                          color: AppColors.white100,
                                          height: 14,
                                          width: 14)),
                                ],
                              ),
                              VerticalMargin(10),
                              AnimatedBuilder(
                                  animation: _animationController,
                                  child: Container(
                                    height: 40,
                                    width: context.screenWidth() * 0.4,
                                    decoration: BoxDecoration(
                                      color: AppColors.black200,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                          AppIcons.wallet,
                                          color: AppColors.white100,
                                          height: 20,
                                          width: 20,
                                        ),
                                        HorizontalMargin(5),
                                        Text(AppTexts.topUp,
                                            style: Config.b1(context).copyWith(
                                              color: AppColors.white100,
                                              fontSize: 11,
                                            )),
                                      ],
                                    ),
                                  ),
                                  builder: (context, child) {
                                    return Transform.translate(
                                      offset: Offset(0,
                                          5 * (1 - _animationController.value)),
                                      child: child,
                                    );
                                  })
                            ],
                          ),
                        ))
                  ]))),
          DiscoverCampaign(),
          LatestFundraiserWidget(),
        ]));
  }
}
