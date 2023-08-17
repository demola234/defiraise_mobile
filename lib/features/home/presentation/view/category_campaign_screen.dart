import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/routers/routes_constants.dart';
import 'package:defiraiser_mobile/core/shared/appbar/appbar.dart';
import 'package:defiraiser_mobile/features/home/presentation/state/campaign_by_category/bloc/campaign_by_campaign_bloc.dart';
import 'package:defiraiser_mobile/features/home/presentation/widget/donation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:go_router/go_router.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class CategoryCampaignScreen extends ConsumerStatefulWidget {
  final String category;
  final String id;
  const CategoryCampaignScreen(
      {required this.category, required this.id, super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DonationScreenViewState();
}

class _DonationScreenViewState extends ConsumerState<CategoryCampaignScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final RefreshController _refreshController1 =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    _controller.forward();
    super.initState();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(context.screenWidth(), 60),
        child: DeFiRaiseAppBar(
          isBack: true,
          title: widget.category,
          actions: [],
        ),
      ),
      body: Column(
        children: [
          VerticalMargin(20),
          _buildSearchCampaign(),
        ],
      ),
    );
  }

  _buildSearchCampaign() {
    return BlocBuilder<CampaignByCampaignBloc, CampaignByCampaignState>(
        bloc: context.read<CampaignByCampaignBloc>()
          ..add(FetchCampaignByCategoryEvent(id: widget.id)),
        builder: (context, state) {
          return state.maybeWhen(
              orElse: () => Container(),
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error) => Center(child: Text(error)),
              loaded: (success) => Expanded(
                      child: SmartRefresher(
                    enablePullDown: true,
                    enablePullUp: true,
                    header: const WaterDropHeader(),
                    onRefresh: () async {
                      //  refresh bloc
                      context
                          .read<CampaignByCampaignBloc>()
                          .add((FetchCampaignByCategoryEvent(id: widget.id)));
                      _refreshController1.refreshCompleted();
                    },
                    controller: _refreshController1,
                    child: ListView.builder(
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(
                          parent: AlwaysScrollableScrollPhysics()),
                      itemCount: success.data.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            context.goNamed(RouteConstants.singleDonation,
                                extra: success.data[index]);
                          },
                          child: AnimationConfiguration.staggeredList(
                            position: index,
                            duration: const Duration(milliseconds: 200),
                            child: SlideAnimation(
                              verticalOffset: 50.0,
                              child: FadeInAnimation(
                                child: BuildDonationWidget(
                                  campaign: success.data[index],
                                  controller: _controller,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )));
        });
  }
}
