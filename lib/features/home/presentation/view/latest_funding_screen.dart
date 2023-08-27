part of '../_home.dart';

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
          VerticalMargin(10),
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
              height: 250,
              child: BlocBuilder<CampaignsBloc, CampaignsState>(
                  builder: (context, state) {
                return state.maybeWhen(
                  orElse: () => Container(),
                  loaded: (success) => AnimationLimiter(
                      child: ListView.builder(
                          itemCount: success.data!.length,
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(
                              parent: AlwaysScrollableScrollPhysics()),
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                context.goNamed(RouteConstants.singleDonation,
                                    extra: success.data![index]);
                              },
                              child: AnimationConfiguration.staggeredList(
                                  position: index,
                                  duration: const Duration(milliseconds: 200),
                                  child: SlideAnimation(
                                      horizontalOffset: 30,
                                      verticalOffset: 50.0,
                                      child: FadeInAnimation(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Container(
                                            width: 200,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 10),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                              color: AppColors.white100,
                                            ),
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 120,
                                                  width: 200,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: AppColors.grey200
                                                        .withOpacity(0.5),
                                                  ),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    child: CachedNetworkImage(
                                                        imageUrl: success
                                                            .data![index].image,
                                                        fit: BoxFit.cover,
                                                        height: 120,
                                                        placeholder: (context,
                                                                url) =>
                                                            Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10),
                                                                  color: AppColors
                                                                      .grey100,
                                                                ),
                                                                child: Shimmer(
                                                                  gradient:
                                                                      LinearGradient(
                                                                    begin: Alignment
                                                                        .topLeft,
                                                                    end: Alignment
                                                                        .bottomRight,
                                                                    colors: [
                                                                      AppColors
                                                                          .grey100,
                                                                      AppColors
                                                                          .white100,
                                                                    ],
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    height: 120,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              20),
                                                                    ),
                                                                  ),
                                                                )),
                                                        errorWidget: (context,
                                                            url, error) {
                                                          return Image.asset(
                                                            AppImages.avatar(1),
                                                            height: 12,
                                                            fit: BoxFit.cover,
                                                            width: 12,
                                                          );
                                                        }),
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
                                                      style: Config.b2(context)
                                                          .copyWith(
                                                        fontSize: 10,
                                                        color:
                                                            AppColors.grey100,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    HorizontalMargin(5),
                                                    CachedNetworkImage(
                                                        imageUrl: success
                                                            .data![index]
                                                            .user![0]
                                                            .avatar,
                                                        fit: BoxFit.cover,
                                                        height: 15,
                                                        width: 15,
                                                        placeholder:
                                                            (context, url) =>
                                                                LoadingImage(),
                                                        errorWidget: (context,
                                                            url, error) {
                                                          return Image.asset(
                                                            AppImages.avatar(1),
                                                            height: 12,
                                                            fit: BoxFit.cover,
                                                            width: 12,
                                                          );
                                                        }),
                                                    HorizontalMargin(5),
                                                    Flexible(
                                                      child: Text(
                                                        success
                                                                    .data![index]
                                                                    .user![0]
                                                                    .username !=
                                                                ""
                                                            ? "${success.data![index].user![0].username}"
                                                            : "Anonymous",
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style:
                                                            Config.b2(context)
                                                                .copyWith(
                                                          fontSize: 10,
                                                          color: AppColors
                                                              .black100,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
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
                                                    Flexible(
                                                      child: Text(
                                                        success
                                                            .data![index].title,
                                                        maxLines: 1,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        style:
                                                            Config.b3(context)
                                                                .copyWith(
                                                          fontSize: 10,
                                                          color: AppColors
                                                              .black100,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                VerticalMargin(10),
                                                linearPercentage(
                                                    success.data![index]
                                                        .totalAmountDonated,
                                                    success.data![index].goal,
                                                    _controller,
                                                    context,
                                                    height: 10,
                                                    width: 200),
                                                VerticalMargin(10),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        SvgPicture.asset(
                                                          AppIcons.ether,
                                                          height: 10,
                                                          width: 10,
                                                        ),
                                                        HorizontalMargin(5),
                                                        Text(
                                                          (success.data![index]
                                                                      .goal /
                                                                  1000000000000000000)
                                                              .toString(),
                                                          style:
                                                              Config.b2(context)
                                                                  .copyWith(
                                                            fontSize: 10,
                                                            color: AppColors
                                                                .black100,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                        HorizontalMargin(5),
                                                        Text(
                                                          "ETH",
                                                          style:
                                                              Config.b2(context)
                                                                  .copyWith(
                                                            fontSize: 10,
                                                            color: AppColors
                                                                .grey100,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Text(
                                                      DateTime.tryParse(success
                                                              .data![index]
                                                              .deadline!)!
                                                          .endTime(),
                                                      style: Config.b2(context)
                                                          .copyWith(
                                                        fontSize: 10,
                                                        color:
                                                            AppColors.grey100,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ))),
                            );
                          })),
                );
              })),
          VerticalMargin(30),
        ],
      ),
    );
  }
}
