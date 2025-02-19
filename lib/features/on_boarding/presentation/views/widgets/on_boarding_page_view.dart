import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_images.dart';
import 'package:fruits_hub/core/utils/app_text_styles.dart';
import 'package:fruits_hub/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        PageViewItem(
          image: Assets.assetsImagesPageViewItem1Image,
          backgroundImage: Assets.assetsImagesPageViewItem1BackgroundImage,
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          title: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'مرحبًا بك في',
                  style: TextStyles.bold23.copyWith(
                    color: Color(0xFF0C0D0D),
                  ),
                ),
                TextSpan(
                  text: ' Fruit',
                  style: TextStyles.bold23.copyWith(
                    color: Color(0xFF1B5E37),
                  ),
                ),
                TextSpan(
                  text: 'HUB',
                  style: TextStyles.bold23.copyWith(
                    color: Color(0xFFF4A91F),
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          isVisible: true,
        ),
        PageViewItem(
          image: Assets.assetsImagesPageViewItem2Image,
          backgroundImage: Assets.assetsImagesPageViewItem2BackgroundImage,
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
          title: Text(
            'ابحث وتسوق',
            style: TextStyle(
              color: Color(
                0XFF0C0D0D,
              ),
              fontSize: 23,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          isVisible: false,
        ),
      ],
    );
  }
}
