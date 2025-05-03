import 'package:ecommerce_app/core/constents.dart';
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/widgets/custem_text_feild.dart';
import 'package:ecommerce_app/core/widgets/custem_widgets.dart';
import 'package:ecommerce_app/core/widgets/custom_text.dart';
import 'package:ecommerce_app/features/auth/presentation/view/widgets/dont_have_account.dart';
import 'package:ecommerce_app/features/auth/presentation/view/widgets/or_dividor.dart';
import 'package:ecommerce_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'login_custom_btn.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: KhorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: KhorizontalPadding),
            CustemTextFormFeild(
              hintText: S.of(context).email,
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

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText(
                  text: S.of(context).forgot_password,
                  color: AppColor.primaryLightColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),

            const SizedBox(height: 20),

            // join button
            CustemButtom(
              text: S.of(context).login,
              color: AppColor.primaryColor,
              onPressed: () {
                // Handle login action
              },
            ),

            const SizedBox(height: 32),

            DontHaveAccount(),

            const SizedBox(height: 40),

            OrDividor(),

            const SizedBox(height: 16),

            AuthCustomBtn(
              text: S.of(context).login_with_google,
              image: Assets.assetsLogoGoogle,
                  onPressed: () {
                // Handle login with Google action
              },
            ),

            const SizedBox(height: 20),

            AuthCustomBtn(
              text: S.of(context).login_with_apple,
              image: Assets.assetsLogoApple,
                onPressed: () {
                // Handle login with Apple action
              },
            ),
            const SizedBox(height: 20),
            AuthCustomBtn(
              text: S.of(context).login_with_facebook,
              image: Assets.assetsLogoFacebook,
               onPressed: () {
                // Handle login with Facebook action
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
