part of '../_home.dart';

class DiscoverCampaign extends StatelessWidget {
  const DiscoverCampaign({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<CategoriesBlocBloc, CategoriesBlocState>(
        builder: (context, state) {
          return Column(
            children: [
              VerticalMargin(20),
              state.maybeWhen(
                  orElse: () => Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.sp),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.sp),
                              child: Text(
                                AppTexts.discoverCampaign,
                                style: TextStyle(
                                    color: AppColors.black100,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                  error: (e) => ErrorStateWidget(onTap: () {
                        context
                            .read<CategoriesBlocBloc>()
                            .add(FetchCategories());
                        context.read<CampaignsBloc>().add(FetchCampaigns());
                        context
                            .read<GetUserDetailsBloc>()
                            .add(GetUserEventEq());
                      })),
              state.maybeWhen(
                  orElse: () => Container(),
                  loading: () => Container(
                      padding: EdgeInsets.symmetric(horizontal: 25.sp),
                      height: 100.sp,
                      width: context.screenWidth(),
                      child: AnimationLimiter(child: LoadingCampaigns())),
                  loaded: (success) => Column(
                        children: [
                          VerticalMargin(20),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 25.sp),
                            height: 100.sp,
                            width: context.screenWidth(),
                            child: AnimationLimiter(
                              child: ListView.builder(
                                  itemCount: success.data.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return AnimationConfiguration.staggeredList(
                                        position: index,
                                        duration:
                                            const Duration(milliseconds: 200),
                                        child: FadeIn(
                                            delay: Duration(milliseconds: 50),
                                            // curve: Curves.easeOutQuint,
                                            // horizontalOffset: 30,
                                            // verticalOffset: 50.0,
                                            child: FlipAnimation(
                                                child: GestureDetector(
                                              onTap: () {
                                                context.goNamed(
                                                    RouteConstants
                                                        .getCampaignCategory,
                                                    queryParameters: {
                                                      "id": success
                                                          .data[index].id,
                                                      "category": success
                                                          .data[index].name,
                                                    });
                                              },
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 15.sp),
                                                    child: Container(
                                                      height: 50.sp,
                                                      width: 50.sp,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        color: AppColors.grey200
                                                            .withOpacity(0.5),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(0.0),
                                                        child:
                                                            SvgPicture.network(
                                                                success
                                                                    .data[index]
                                                                    .image,
                                                                height: 20.sp,
                                                                width: 20.sp),
                                                      ),
                                                    ),
                                                  ),
                                                  VerticalMargin(5),
                                                  Text(
                                                    success.data[index].name,
                                                    style: Config.b1(context)
                                                        .copyWith(
                                                      color: AppColors.grey100,
                                                      fontSize: 10.sp,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ))));
                                  }),
                            ),
                          )
                        ],
                      )),
            ],
          );
        },
      ),
    );
  }
}
