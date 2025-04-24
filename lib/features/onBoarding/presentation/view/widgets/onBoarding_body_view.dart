import 'package:dots_indicator/dots_indicator.dart';
import 'package:ecommerce_app/core/constents.dart';
import 'package:ecommerce_app/core/services/shared_prefrences.dart';
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/widgets/custem_widgets.dart';
import 'package:ecommerce_app/features/auth/presentation/view/login_view.dart';
import 'package:ecommerce_app/features/onBoarding/presentation/view/widgets/onBoarding_page_view.dart';
import 'package:flutter/material.dart';

class OnboardingBodyView extends StatefulWidget {
  const OnboardingBodyView({super.key});

  @override
  State<OnboardingBodyView> createState() => _OnboardingBodyViewState();
}

class _OnboardingBodyViewState extends State<OnboardingBodyView> {
  late PageController pageController = PageController();
  int currentPage = 0;

  @override
  void initState() {
    pageController.addListener(
      () =>
        setState(() {
          currentPage = pageController.page!.round();
        }),
    );
    super.initState();
  }

  @override 
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(child: SafeArea(child: OnboardingPageView(pageController: pageController,))),
          DotsIndicator(
            dotsCount: 2,
            position: currentPage.toDouble(),
            decorator: DotsDecorator(
              activeColor: AppColor.primaryColor,
              color: currentPage == 1 
              ? AppColor.primaryColor : AppColor.primaryColor,
              size: const Size(10, 10),
            ),
          ),
          const SizedBox(height: 20),
          Visibility(
            visible: currentPage == 1,
            replacement: SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
            child: CustemButtom(
              text: 'ابدأ الان',
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(context, LoginView.routeName,(route) =>false ,);
                Pref.setBool(isBoardingViewSeen, true);
              },
              color: AppColor.primaryColor,
            ),
          ),
          const SizedBox(height: 43),
        ],
      ),
    );
  }
}
