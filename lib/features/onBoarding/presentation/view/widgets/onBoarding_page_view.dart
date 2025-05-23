import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/core/widgets/custom_text.dart';
import 'package:ecommerce_app/features/onBoarding/presentation/view/widgets/page_view_item.dart';
import 'package:ecommerce_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class OnboardingPageView extends StatelessWidget {
  
  final PageController pageController;

  const  OnboardingPageView({super.key, required this.pageController});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      controller: pageController,
      children: [
        PageViewItem(
          isVisabile: true,
          imagePath: Assets.assetsLogoPageItem1Oboard,
          imageBackground: Assets.assetsLogoPageItem1Vector,
          title: CustomText(text: S.of(context).title_on_board1, color: Colors.black, fontSize: 22, fontWeight: FontWeight.w700),
          description:
              S.of(context).description_on_board1,
        ),
        PageViewItem(
          isVisabile:  false,
          imagePath: Assets.assetsLogoPageItem2Onboard,
          imageBackground: Assets.assetsLogoPageItem2Vector,
          title: CustomText(text: S.of(context).title_on_board2, color: Colors.black, fontSize: 22, fontWeight: FontWeight.w700),
          description:
           S.of(context).description_on_board2,
        ),
      ],     
     );
  }
}