import 'package:ecommerce_app/features/onBoarding/presentation/view/widgets/onBoarding_body_view.dart';
import 'package:flutter/material.dart';
class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  static const String routeName = '/onboarding';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingBodyView(),
    );
  }
}