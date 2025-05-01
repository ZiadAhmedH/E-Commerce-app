import 'package:ecommerce_app/core/constents.dart';
import 'package:ecommerce_app/core/utils/app_color.dart';
import 'package:ecommerce_app/core/widgets/custem_text_feild.dart';
import 'package:ecommerce_app/core/widgets/custem_widgets.dart';
import 'package:ecommerce_app/core/widgets/custom_text.dart';
import 'package:ecommerce_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
            const SizedBox(
              height:KhorizontalPadding ,
            ),
            CustemTextFormFeild(
              hintText: S.of(context).email,
              controller: TextEditingController(),
              iconData: Icons.abc_outlined,
              isPassword: false,
              textInputType: TextInputType.emailAddress,
            ),

            const SizedBox(height: 20,),

            CustemTextFormFeild(
              hintText: S.of(context).password,
              controller: TextEditingController(),
              iconData: Icons.remove_red_eye,
              isPassword: true,
              textInputType: TextInputType.visiblePassword,
            ),

            const SizedBox(height: 20,),

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

            const SizedBox(height: 20,),


           // join button
            CustemButtom(
              text: S.of(context).login,
              color: AppColor.primaryColor,
              onPressed: () {
                // Handle login action
              },
            ),

            const SizedBox(height: 32,),
            
            Text.rich(
              TextSpan(
                text: S.of(context).dont_have_an_account,
                style: const TextStyle(
                  color: AppColor.gray1,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),

                children: [
                  TextSpan(
                    text: " ${S.of(context).create_account}",
                    style: const TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),
     
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    color: AppColor.grayHeavyLight,
                  ),
                ),
                const SizedBox(width: 10,),
                Text.rich(
                  TextSpan(
                    text: S.of(context).or,
                    style: const TextStyle(
                      color: AppColor.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  child: Container(
                    height: 1,
                    color: AppColor.grayHeavyLight,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40,),


            LoginCustomBtn(
              text: S.of(context).login_with_google,
              color: AppColor.white,
             icon: const Icon(FontAwesomeIcons.google, color: AppColor.black,),
              onPressed: () {
                // Handle login with Google action
              },
            ),

            const SizedBox(height: 20,),

            LoginCustomBtn(
              text: S.of(context).login_with_apple,
              color: AppColor.white,
              icon: const Icon(FontAwesomeIcons.apple, color: AppColor.black,),
              onPressed: () {
                // Handle login with Apple action
              },
            ),
            const SizedBox(height: 20,),
            LoginCustomBtn(
              text: S.of(context).login_with_facebook,
              color: AppColor.white,
              icon: const Icon(FontAwesomeIcons.facebook, color: AppColor.black,),
              onPressed: () {
                // Handle login with Facebook action
              },
            ),
            const SizedBox(height: 20,),

          ],
        ),
      ),
    );
  }
}
