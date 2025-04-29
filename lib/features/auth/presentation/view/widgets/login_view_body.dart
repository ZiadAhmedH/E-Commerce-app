import 'package:ecommerce_app/core/constents.dart';
import 'package:ecommerce_app/core/widgets/custem_text_feild.dart';
import 'package:ecommerce_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KhorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustemTextFormFeild(
              hintText: S.of(context).email,
              controller: TextEditingController(),
              iconData: Icons.abc_outlined,
              isPassword: false,
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(
              height: 20,
            ),
            CustemTextFormFeild(
              hintText: S.of(context).password,
              controller: TextEditingController(),
              iconData: Icons.remove_red_eye,
              isPassword: true,
              textInputType: TextInputType.visiblePassword,
            ),
          ],
        ),
      ),
    );
  }
}
