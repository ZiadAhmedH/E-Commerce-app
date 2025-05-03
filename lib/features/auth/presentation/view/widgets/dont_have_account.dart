import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/features/auth/presentation/view/sign_up_view.dart';
import 'package:ecommerce_app/generated/l10n.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: S.of(context).dont_have_an_account,
        style: const TextStyle(
          color: AppColor.gray1,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
    
        children: [
          TextSpan(
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                Navigator.pushNamed(context, SignUpView.routeName);
              },
            text: " ${S.of(context).create_account}",
            style: const TextStyle(
              color: AppColor.primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
