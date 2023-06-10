part of '../_home.dart';

class AmountDonateScreen extends ConsumerStatefulWidget {
  const AmountDonateScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AmountDonateScreenState();
}

class _AmountDonateScreenState extends ConsumerState<AmountDonateScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  final TextEditingController _amountController = TextEditingController();
  final double _availableBalance = 2.10;
  final ValueNotifier<bool> _isAvailableGreaterThanAmount =
      ValueNotifier<bool>(false);
  final ValueNotifier<double> _exchangeRate = ValueNotifier<double>(0.0);

  @override
  void initState() {
    _amountController.addListener(_availableGreaterThanAmount);
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(
          microseconds: 2000,
        ));
    // animate to vibrate
    _animation = Tween<double>(begin: 1.0, end: 1.1).animate(
        CurvedAnimation(parent: _controller, curve: Curves.elasticInOut));
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      }
    });

    super.initState();
  }

  double _exchangeRateDollarToEther() {
    setState(() {
      _exchangeRate.value = _amountController.text.isEmpty
          ? 0.0
          : double.parse(_amountController.text) * 1900.10;
    });
    return _exchangeRate.value;
  }

  _availableGreaterThanAmount() {
    setState(() {
      if (_amountController.text.isEmpty) {
        _isAvailableGreaterThanAmount.value = false;
        return;
      }
      _isAvailableGreaterThanAmount.value =
          double.parse(_amountController.text) > _availableBalance;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white200,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: DeFiRaiseAppBar(
          title: AppTexts.amount2Donate,
        ),
      ),
      body: Column(
        children: [
          VerticalMargin(10),
          Expanded(
            child: SizedBox(
              width: context.screenWidth(0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: SvgPicture.asset(
                      AppIcons.ether,
                      height: 20,
                      width: 20,
                    ),
                  ),
                  HorizontalMargin(10),
                  ScaleTransition(
                    scale: _animation,
                    child: AutoSizeText(
                      maxFontSize: 50,
                      _amountController.text.isEmpty
                          ? '0.00'
                          : _amountController.text,
                      softWrap: true,
                      overflow: TextOverflow.fade,
                      style: Config.h1(context).copyWith(
                          color: !_isAvailableGreaterThanAmount.value
                              ? AppColors.black100
                              : AppColors.errorColor,
                          fontSize: 50,
                          decoration: !_isAvailableGreaterThanAmount.value
                              ? TextDecoration.none
                              : TextDecoration.lineThrough,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
          VerticalMargin(10),
          AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return MaterialButton(
                  onPressed: () {
                    // Animate the button
                    _controller.forward();
                    // _availableBalance = _amountController.text;
                    HapticFeedback.mediumImpact();
                    SystemSound.play(SystemSoundType.alert);
                    setState(() {
                      _amountController.text = _availableBalance.toString();
                    });
                  },
                  // shape: const CircleBorder(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  color: AppColors.secondaryColor,
                  elevation: 0.0,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  minWidth: 120.0,
                  // height: 35.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Use Max',
                      style: Config.b1(context).copyWith(
                        fontSize: 16.0,
                        color: AppColors.white100,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                );
              }),
          VerticalMargin(20),
          Text(
            AppTexts.availableBalance,
            style: Config.b1(context).copyWith(
              fontSize: 16.0,
              color: AppColors.black100,
              fontWeight: FontWeight.bold,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 3.0),
                child: SvgPicture.asset(
                  AppIcons.ether,
                  height: 20,
                  width: 20,
                ),
              ),
              HorizontalMargin(10),
              Text(
                _availableBalance.toString(),
                style: Config.b1(context).copyWith(
                  fontSize: 19.0,
                  color: AppColors.black100,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          VerticalMargin(15),
          Container(
              width: context.screenWidth(0.6),
              padding: EdgeInsets.symmetric(vertical: 10.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.black200,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(50.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '\$ ${_exchangeRateDollarToEther().toStringAsFixed(1)}',
                    style: Config.b1(context).copyWith(
                      fontSize: 16.0,
                      color: AppColors.black100,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  HorizontalMargin(5),
                  SvgPicture.asset(
                    AppIcons.transfer,
                    height: 20,
                    width: 20,
                  ),
                ],
              )),
          // Spacer(),
          VerticalMargin(20),
          Align(
              alignment: Alignment.bottomCenter,
              child: CustomKeyboard(
                onTap: (value) {
                  setState(() {
                    // if the length is greater 8 do nothing
                    if (_amountController.text.length > 8) {
                      return;
                    } else if (_amountController.text.isEmpty && value == '.') {
                      _amountController.text = '0$value';
                    }
                    // only one . is allowed
                    else if (_amountController.text.contains('.') &&
                        value == '.') {
                      return;
                    }
                    // if the first character is 0 and the second is not . add . + new value
                    else if (_amountController.text.startsWith('0') &&
                        _amountController.text.length == 1 &&
                        value != '.') {
                      _amountController.text = value;
                    } else {
                      _amountController.text = _amountController.text + value;
                    }
                    _controller.reset();
                    _controller.forward();
                  });
                },
                onBackspaceTap: () {
                  setState(() {
                    _controller.reset();
                    _controller.forward();
                    if (_amountController.text.length > 1) {
                      _amountController.text = _amountController.text
                          .substring(0, _amountController.text.length - 1);
                    } else {
                      _amountController.clear();
                    }
                  });
                },
                onBackspaceLongPress: () {
                  setState(() {
                    _amountController.clear();
                  });
                },
              )),
          VerticalMargin(20),
          AppButton(
            text: AppTexts.proceed,
            isRounded: true,
            onTap: () {
              //FIXME: Navigate to login screen
            },
            textColor: AppColors.white100,
            color: AppColors.black200,
          ),
          VerticalMargin(50),
        ],
      ),
    );
  }
}
