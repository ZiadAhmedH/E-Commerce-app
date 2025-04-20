import 'package:ecommerce_app/features/splash/presentation/widgets/splash_body_view.dart';
import 'package:flutter/material.dart';
class SplashView extends StatelessWidget {
  const SplashView({super.key});
  static const String routeName = '/splash';  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashBodyView()
    );
  }
}
