import 'package:defiraiser_mobile/core/global/constants/app_images.dart';
import 'package:defiraiser_mobile/core/global/constants/app_texts.dart';
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/shared/appbar/appbar.dart';
import 'package:defiraiser_mobile/features/home/presentation/widget/donation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class CampaignScreenView extends ConsumerStatefulWidget {
  const CampaignScreenView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CampaignScreenViewState();
}

class _CampaignScreenViewState extends ConsumerState<CampaignScreenView>
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
              padding: const EdgeInsets.only(right: 14.0, top: 10),
              child: CircleAvatar(
                radius: 35,
                backgroundColor: Colors.transparent,
                child: Image.asset(
                  AppImages.avatar(1),
                  fit: BoxFit.cover,
                ),
              ),
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
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        itemCount: 20,
        itemBuilder: (context, index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 200),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: BuildDonationWidget(
                  controller: _controller,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
