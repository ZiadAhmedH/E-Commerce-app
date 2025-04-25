import 'package:ecommerce_app/core/constents.dart';
import 'package:ecommerce_app/core/services/shared_prefrences.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/features/onBoarding/presentation/view/onBoarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../../../auth/presentation/view/login_view.dart';

class SplashBodyView extends StatefulWidget {
  const SplashBodyView({super.key});

  @override
  State<SplashBodyView> createState() => _SplashBodyViewState();
}

class _SplashBodyViewState extends State<SplashBodyView> {
  @override
  void initState() {
    executeSplashScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment:isArabic() ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [SvgPicture.asset(Assets.assetsLogoFruitHubLogo)],
        ),
        SvgPicture.asset(Assets.assetsLogoMarketLogo),
        SvgPicture.asset(Assets.assetsLogoLowerDesignSplash, fit: BoxFit.fill),
      ],
    );
  }

  void executeSplashScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      if(Pref.getBool(isBoardingViewSeen) == true) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      } else {
        Navigator.pushReplacementNamed(context, OnboardingView.routeName);
      }
    });
  }

  bool isArabic() {
    return Intl.getCurrentLocale() == 'ar';
  }
}
