import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/features/onBoarding/presentation/view/widgets/page_view_item.dart';
import 'package:ecommerce_app/generated/l10n.dart';
import 'package:flutter/material.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: [
        PageViewItem(
          imagePath: Assets.assetsLogoPageItem1Oboard,
          imageBackground: Assets.assetsLogoPageItem1Vector,
          title: Text("d"),
          description:
              S.of(context).description_on_board1,
        ),
        PageViewItem(
          imagePath: Assets.assetsLogoPageItem2Onboard,
          imageBackground: Assets.assetsLogoPageItem2Vector,
          title: Text("d"),
          description:
              S.of(context).description_on_board2,
        ),
      ],
    );
  }
}