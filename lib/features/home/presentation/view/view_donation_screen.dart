part of '../_home.dart';

class ViewDonorsScreens extends ConsumerStatefulWidget {
  const ViewDonorsScreens({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ViewDonorsScreensState();
}

class _ViewDonorsScreensState extends ConsumerState<ViewDonorsScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: DeFiRaiseAppBar(
          title: AppTexts.viewDonors,
        ),
      ),
      body: Column(
        children: [
          _buildDonorsList(),
        ],
      ),
    );
  }

  Widget _buildDonorsList() {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        itemCount: 10,
        itemBuilder: (context, index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 1000),
            child: SlideAnimation(
              verticalOffset: 50.0,
              child: FadeInAnimation(
                child: _buildDonorItem(),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildDonorItem() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 25),
      child: Container(
          // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            color: AppColors.white100,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage(AppImages.avatar(1)),
              ),
            ),
            HorizontalMargin(10),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'John Doe',
                style: Config.b2(context).copyWith(
                  color: AppColors.secondaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              VerticalMargin(5),
              Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      AppIcons.ether,
                      height: 15,
                      width: 15,
                    ),
                    HorizontalMargin(5),
                    Text(
                      '0.0001 ETH',
                      style: Config.b2(context).copyWith(
                        color: AppColors.black100,
                        fontSize: 12,
                      ),
                    ),
                  ]),
              Text(
                '2 days ago',
                style: Config.b2(context).copyWith(
                  color: AppColors.grey300,
                  fontSize: 12,
                ),
              )
            ]),
            Spacer(),
            SvgPicture.asset(
              AppIcons.ethBackground,
              height: 80,
              width: 80,
              fit: BoxFit.cover,
            )
          ])),
    );
  }
}
