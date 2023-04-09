import 'package:capstone/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/onboarding_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../routes/app_pages.dart';
import '../../../widgets/OnBoardingWidgets.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: controller.indicator,
          onPageChanged: ((value) {
            controller.page.value = value;
            print(controller.page.value);
          }),
          children: [
            // start page onboarding
            OnBoardingWidgets(
              image: 'on_boarding_1.png',
              title: 'Track Your Progress',
              subtitle:
                  'Stay motivated and track your fitness journey with our easy-to-use tracking feature. Set goals and see your progress in real-time.',
            ),
            OnBoardingWidgets(
              image: 'on_boarding_2.png',
              title: 'Efficient Workouts',
              subtitle:
                  'Get customized workout plans that are tailored to your goals and fitness level. Our app provides you with everything you need to make your workouts more efficient.',
            ),
            OnBoardingWidgets(
              image: 'on_boarding_3.png',
              title: 'Join Our Community',
              subtitle:
                  'Connect with like-minded individuals who share your passion for fitness. Our community is a great way to find motivation, get support, and share your progress.',
            ),
            // end
          ],
        ),
        Container(
          alignment: Alignment(0.8, -0.85),
          child: GestureDetector(
            onTap: () {
              controller.indicator.jumpToPage(3);
            },
            child: Text('Skip'),
          ),
        ),
        Obx(() => Container(
              alignment: Alignment(0, 0.85),
              child: controller.page.value != 2
                  ? SmoothPageIndicator(
                      controller: controller.indicator,
                      count: 3,
                      effect: SlideEffect(
                        activeDotColor: primaryColor,
                        spacing: 8.0,
                        radius: 4.0,
                        dotWidth: 8,
                        dotHeight: 8,
                        dotColor: Colors.grey,
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        Get.offAllNamed(Routes.LOGIN);
                      },
                      child: Container(
                        height: 55,
                        width: Get.width * 0.8,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 14),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Getting Started',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
            ))
      ],
    ));
  }
}
