import 'package:ecommerce_app/generated/l10n.dart';
import 'package:flutter/material.dart';

import 'widgets/custom_app_bar.dart';
import 'widgets/login_view_body.dart';
class LoginView extends StatelessWidget {
  const LoginView({super.key});
 static const String routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:buildAppBar(context, title: S.of(context).login ), 
      body: const LoginViewBody(),  
    );
  }
}