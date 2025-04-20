import 'package:ecommerce_app/core/utils/app_images.dart';
import 'package:ecommerce_app/features/onBoarding/presentation/view/widgets/page_view_item.dart';
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
              "اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.",
        ),
        PageViewItem(
          imagePath: Assets.assetsLogoPageItem2Onboard,
          imageBackground: Assets.assetsLogoPageItem2Vector,
          title: Text("d"),
          description:
              "نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية",
        ),
      ],
    );
  }
}