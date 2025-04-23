import 'package:ecommerce_app/features/auth/presentation/view/login_view.dart';
import 'package:ecommerce_app/features/onBoarding/presentation/view/onBoarding_view.dart';
import 'package:ecommerce_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings){

  switch(settings.name){
    
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView(),);
    case OnboardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnboardingView(),);
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => LoginView(),);  
    default:
      return MaterialPageRoute(builder: (context) => Scaffold(
        body: Center(child: Text('No route defined for ${settings.name}')),
      ),);
    
  }
}