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
  final RefreshController _refreshController1 =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _animationController.repeat(reverse: true);
    super.initState();
  }

  @override
  dispose() {
    _animationController.dispose();
    super.dispose();
  }

  final user = sl<AppCache>().getUserDetails();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white200,
        body: SmartRefresher(
          enablePullDown: true,
          enablePullUp: true,
          header: const MaterialClassicHeader(
            color: AppColors.black100,
            backgroundColor: AppColors.white100,
          ),
          onRefresh: () async {
            //  refresh bloc
            context.read<CategoriesBlocBloc>().add(FetchCategories());
            context.read<CampaignsBloc>().add(FetchCampaigns());
            context.read<GetUserDetailsBloc>().add(GetUserEventEq());

            _refreshController1.refreshCompleted();
          },
          controller: _refreshController1,
          child: CustomScrollView(
            shrinkWrap: true,
            slivers: [
              SliverAppBar(
                  snap: false,
                  automaticallyImplyLeading: false,
                  pinned: true,
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
                        // Positioned(
                        //   top: 90,
                        //   left: 20,
                        //   child: Container(
                        //     height: 60,
                        //     width: 60,
                        //     decoration: BoxDecoration(
                        //       image: DecorationImage(
                        //         image: AssetImage(AppImages.LoaderLogo),
                        //         fit: BoxFit.cover,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Positioned(
                          top: 90,
                          left: 20,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                HorizontalMargin(10),
                                BlocBuilder<GetUserDetailsBloc,
                                    GetUserDetailsState>(
                                  builder: (context, state) {
                                    return GestureDetector(
                                      onTap: () {
                                        context.goNamed(
                                            RouteConstants.selectAvatar2);
                                      },
                                      child: CachedNetworkImage(
                                          imageUrl: state.maybeWhen(
                                            orElse: () => user.avatar,
                                            loadDetails: (success) =>
                                                success.avatar,
                                          ),
                                          fit: BoxFit.cover,
                                          height: 60,
                                          width: 60,
                                          placeholder: (context, url) =>
                                              LoadingImage(),
                                          errorWidget: (context, url, error) {
                                            return Image.asset(
                                              AppImages.avatar(1),
                                              height: 60,
                                              fit: BoxFit.cover,
                                              width: 60,
                                            );
                                          }),
                                    );
                                  },
                                ),
                                // CircleAvatar(
                                //   radius: 30,
                                //   backgroundColor: Colors.transparent,
                                //   backgroundImage: AssetImage(AppImages.avatar(1)),
                                // )
                              ]),
                        ),
                        _balanceWidget(context)
                      ]))),
              DiscoverCampaign(),
              LatestFundraiserWidget(),
            ],
          ),
        ));
  }

  Positioned _balanceWidget(BuildContext context) {
    return Positioned(
        bottom: 0,
        left: context.screenWidth() * 0.05,
        child: BlocBuilder<GetUserDetailsBloc, GetUserDetailsState>(
          builder: (context, state) {
            return Container(
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
                      Text("ETH",
                          style: Config.b1(context).copyWith(
                            color: AppColors.white100,
                          )),
                      HorizontalMargin(10),
                      Text(
                          state.maybeWhen(
                            orElse: () => double.tryParse(user.balance)!
                                .toStringAsFixed(4)
                                .toString(),
                            loadDetails: (data) =>
                                double.tryParse(data.balance)!
                                    .toStringAsFixed(4)
                                    .toString(),
                            loading: () => '●●●',
                          ),
                          style: Config.h2(context).copyWith(
                            color: AppColors.white100,
                          )),
                      HorizontalMargin(10),
                      // InkWell(
                      //     onTap: () {
                      //       setState(() {
                      //         isHide.value = !isHide.value;
                      //       });
                      //     },
                      //     child: SvgPicture.asset(
                      //         isHide.value
                      //             ? AppIcons.balanceEye
                      //             : AppIcons.balanceEyeClose,
                      //         color: AppColors.white100,
                      //         height: 14,
                      //         width: 14)),
                    ],
                  ),
                  VerticalMargin(10),
                  _topUpButton(context)
                ],
              ),
            );
          },
        ));
  }

  Container _searchBar(BuildContext context) {
    return Container(
        height: 60,
        width: context.screenWidth() * 0.73,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.white100,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HorizontalMargin(10),
              SvgPicture.asset(AppIcons.search,
                  color: AppColors.black200, height: 20, width: 20),
              HorizontalMargin(10),
              Text(
                AppTexts.searchCampaign,
                style: TextStyle(color: AppColors.black200, fontSize: 16),
              )
            ],
          ),
        ));
  }

  AnimatedBuilder _topUpButton(BuildContext context) {
    return AnimatedBuilder(
        animation: _animationController,
        child: GestureDetector(
          onTap: () {
            showModalBottomSheet(
              context: context,
              backgroundColor: Colors.transparent,
              isScrollControlled: true,
              elevation: 0.0,
              builder: (_) {
                return Container(
                  height: context.screenHeight() * 0.45,
                  decoration: BoxDecoration(
                    color: AppColors.white100,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // VerticalMargin(50),
                      QrImageView(
                        data: user.address,
                        version: QrVersions.auto,
                        size: 170.0,
                        // embeddedImage: AssetImage(AppImages.appLogoQr),
                        // embeddedImageStyle: QrEmbeddedImageStyle(
                        //   size: Size(40, 40),
                        // ),
                      ),
                      VerticalMargin(20),
                      Text(
                        AppTexts.walletAddr,
                        style: Config.b1(context).copyWith(
                          color: AppColors.black100,
                        ),
                      ),
                      VerticalMargin(10),
                      Text(
                        user.address,
                        style: Config.b3(context).copyWith(
                          color: AppColors.secondaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      VerticalMargin(10),
                      GestureDetector(
                          onTap: () async {
                            Clipboard.setData(ClipboardData(text: user.address))
                                .then((_) {
                              Navigator.pop(context);
                              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                  content: Text(
                                      "Wallet Address has been copied to clipboard")));
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 160,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.grey200,
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Text(
                                  //   AppTexts.copyAddr,
                                  //   style: Config.b3(context).copyWith(
                                  //     color: AppColors.primaryColor,
                                  //     fontWeight: FontWeight.bold,
                                  //   ),
                                  // ),
                                  // HorizontalMargin(5),
                                  SvgPicture.asset(AppIcons.copy)
                                ]),
                          ))
                    ],
                  ),
                );
              },
            );
          },
          child: Container(
            height: 40,
            width: context.screenWidth() * 0.4,
            decoration: BoxDecoration(
              color: AppColors.black200,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
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
        ),
        builder: (context, child) {
          return Transform.translate(
            offset: Offset(0, 0 * (1 - _animationController.value)),
            child: child,
          );
        });
  }
}

class LoadingImage extends StatelessWidget {
  const LoadingImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.grey100,
            ),
          ),
        ));
  }
}
