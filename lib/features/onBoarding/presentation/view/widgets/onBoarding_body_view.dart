import 'package:ecommerce_app/features/onBoarding/presentation/view/widgets/onBoarding_page_view.dart';
import 'package:flutter/material.dart';
class OnboardingBodyView extends StatelessWidget {
  const OnboardingBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(children: [
        Expanded(child: SafeArea(child: OnboardingPageView())),
      ],),
    );
  }
}