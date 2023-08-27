import 'package:defiraiser_mobile/core/global/constants/app_texts.dart';
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/routers/routes_constants.dart';
import 'package:defiraiser_mobile/core/shared/appbar/appbar.dart';
import 'package:defiraiser_mobile/features/donation/presentation/state/my_campaigns/bloc/my_campaigns_bloc.dart';
import 'package:defiraiser_mobile/features/home/presentation/widget/donation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:go_router/go_router.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class CampaignScreenView extends ConsumerStatefulWidget {
  const CampaignScreenView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CampaignScreenViewState();
}

class _CampaignScreenViewState extends ConsumerState<CampaignScreenView>
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
          isBack: false,
          title: AppTexts.myCampaign,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                  onTap: () {
                    // context.goNamed(RouteConstants.profile);
                  },
                  child: Row(children: [
                    // Plus Icon
                    IconButton(
                        onPressed: () {
                          context.goNamed(RouteConstants.createDonation);
                        },
                        icon: const Icon(
                          Icons.add,
                          color: Colors.black,
                          size: 20,
                        )),
                    // HorizontalMargin(5),
                    // // Add Campaign Text
                    // Text(
                    //   AppTexts.addCampaign,
                    //   style: Config.b1(context).copyWith(
                    //     fontWeight: FontWeight.w600,
                    //     fontSize: 9.0,
                    //     color: AppColors.black100,
                    //   ),
                    // ),
                  ])),
            )
          ],
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
    return BlocBuilder<MyCampaignsBloc, MyCampaignsState>(
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
            context.read<MyCampaignsBloc>().add(FetchMyCampaigns());
            _refreshController1.refreshCompleted();
          },
          controller: _refreshController1,
          child: ListView.builder(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            itemCount: success.data!.length,
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
                    verticalOffset: 50.0,
                    child: FadeInAnimation(
                      child: BuildDonationWidget(
                        campaign: success.data![index],
                        controller: _controller,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        )),
      );
    });
  }
}
