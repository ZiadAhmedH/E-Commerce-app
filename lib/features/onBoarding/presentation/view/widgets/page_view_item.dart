import 'package:ecommerce_app/core/constents.dart';
import 'package:ecommerce_app/core/services/shared_prefrences.dart';
import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/widgets/custom_text.dart';
import 'package:ecommerce_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../auth/presentation/view/login_view.dart';

class PageViewItem extends StatelessWidget {
  final String imagePath, imageBackground;
  final String description;
  final Widget title;
  final bool isVisabile;
  const PageViewItem({
    super.key,
    required this.imagePath,
    required this.imageBackground,
    required this.title,
    required this.description,
    required this.isVisabile,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.5,
          child: Stack(
            children: [
              Positioned.fill(
                child: SvgPicture.asset(imageBackground, fit: BoxFit.fill),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(imagePath),
              ),
              Visibility(
                visible: isVisabile,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: InkWell(
                    onTap: () {
                       Navigator.pushNamedAndRemoveUntil(context, LoginView.routeName, (route) => false);
                       Pref.setBool(isBoardingViewSeen, true);
                       
                    }  ,
                    child: CustomText(
                      text: S.of(context).Skip,
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.07),
        title,
        SizedBox(height: MediaQuery.of(context).size.height * 0.03),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: CustomText(
            text: description,
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
