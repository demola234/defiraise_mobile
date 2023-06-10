import 'package:defiraiser_mobile/core/global/constants/app_icons.dart';
import 'package:defiraiser_mobile/core/global/constants/app_images.dart';
import 'package:defiraiser_mobile/core/global/constants/size.dart';
import 'package:defiraiser_mobile/core/global/themes/color_scheme.dart';
import 'package:defiraiser_mobile/features/home/presentation/_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuildDonationWidget extends ConsumerWidget {
     late AnimationController controller;

   BuildDonationWidget({super.key, required this.controller,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _buildSearchItem(context, controller);
  }

  _buildSearchItem(BuildContext context, AnimationController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          color: AppColors.white100,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            _buildCampaignImage(),
            HorizontalMargin(10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildCampaignDonor(context),
                  VerticalMargin(5),
                  _buildCampaignName(context),
                  VerticalMargin(8),
                  linearPercentage(40, 100, controller, context, height: 7),
                  VerticalMargin(5),
                  _buildCampaignRaised(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildCampaignRaised(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          AppIcons.ether,
          color: AppColors.grey300,
          height: 10,
          width: 10,
          fit: BoxFit.cover,
        ),
        HorizontalMargin(5),
        Text(
          'Raised \$40,000 of \$100,000',
          style: Config.b1(context).copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 9.0,
            color: AppColors.grey300,
          ),
        ),
      ],
    );
  }

  _buildCampaignName(BuildContext context) {
    return Text(
      'Help me raise funds for my education',
      style: Config.b1(context).copyWith(
        fontWeight: FontWeight.w600,
        fontSize: 12.0,
        color: AppColors.black100,
      ),
    );
  }

  _buildCampaignDonor(BuildContext context) {
    return Row(
      children: [
        Text(
          'By ',
          style: Config.b1(context).copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 9.0,
            color: AppColors.grey300,
          ),
        ),
        CircleAvatar(
          radius: 7,
          backgroundColor: AppColors.grey300,
          backgroundImage: AssetImage(AppImages.avatar(1)),
        ),
        HorizontalMargin(5),
        Text(
          'John Doe',
          style: Config.b1(context).copyWith(
            fontWeight: FontWeight.w600,
            fontSize: 9.0,
            color: AppColors.black100,
          ),
        ),
      ],
    );
  }

  _buildCampaignImage() {
    return Container(
      width: 85,
      height: 85,
      decoration: BoxDecoration(
        color: AppColors.white100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          AppImages.campaign,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
