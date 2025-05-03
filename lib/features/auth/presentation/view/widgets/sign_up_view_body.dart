import 'package:ecommerce_app/core/constents.dart';
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/widgets/custem_text_feild.dart';
import 'package:ecommerce_app/features/auth/presentation/view/widgets/terms_and_conditions.dart';
import 'package:ecommerce_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KhorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: KhorizontalPadding),
            CustemTextFormFeild(
              hintText: S.of(context).full_name,
              controller: TextEditingController(),
              iconData: Icons.abc_outlined,
              isPassword: false,
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            CustemTextFormFeild(
              hintText: S.of(context).email_address,
              controller: TextEditingController(),
              iconData: Icons.abc_outlined,
              isPassword: false,
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 20),
            CustemTextFormFeild(
              hintText: S.of(context).password,
              controller: TextEditingController(),
              iconData: Icons.remove_red_eye,
              isPassword: true,
              textInputType: TextInputType.visiblePassword,
            ),

            const SizedBox(height: 16), 
            TermsAndConditinsWidget(),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
