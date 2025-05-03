import 'package:ecommerce_app/features/auth/presentation/view/widgets/custom_app_bar.dart';
import 'package:ecommerce_app/features/auth/presentation/view/widgets/sign_up_view_body.dart';
import 'package:ecommerce_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  static const String routeName = '/signUp';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: S.of(context).new_account),

      backgroundColor: Colors.white,

      body:const SignUpViewBody() ,
    );
  }
}