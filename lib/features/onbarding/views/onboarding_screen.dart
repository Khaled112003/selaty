import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/features/onbarding/views/wigets/custom_indicator.dart';
import 'package:selaty/features/onbarding/views/wigets/onboarding_body.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State {
  int index = 0;
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final bool isLandscape = screenSize.width > screenSize.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/images/background.jpg",
              fit: isLandscape ? BoxFit.fill : BoxFit.cover,
            ),
          ),
          Padding(
            padding:  EdgeInsets.all(8.sp),
            child: PageView(
              controller: controller,
              onPageChanged: (value) {
                setState(() {
                  index = value;
                });
              },
              children: [
                OnboardingBody(
                  isLandscape: isLandscape,
                  icon: Icon(Icons.arrow_forward),
                  color1: onBoardingScreenColors(index)[0],
                  color2: onBoardingScreenColors(index)[1],
                  color3: onBoardingScreenColors(index)[2],
                  text1: "البحث بالقرب منك",
                  text2: "ابحث عن المتاجر المفضلهالتي تريدها بموقعك ",
                  buttonColor: onBoardingScreenColors(index)[2],
                ),
                OnboardingBody(
                  isLandscape: isLandscape,
                  icon: Icon(Icons.arrow_forward),
                  color1: onBoardingScreenColors(index)[0],
                  color2: onBoardingScreenColors(index)[1],
                  color3: onBoardingScreenColors(index)[2],
                  text1: " عروض طازجه وجوده",
                  text2: "جميع العناصر لها نضاره حقيقيه متخصصه لاحتياجك",
                  buttonColor: onBoardingScreenColors(index)[2],
                ),
                OnboardingBody(
                  isLandscape: isLandscape,
                  icon: Icon(Icons.check),
                  color1: onBoardingScreenColors(index)[0],
                  color2: onBoardingScreenColors(index)[1],
                  color3: onBoardingScreenColors(index)[2],
                  text1: "ابدأ الآن",
                  text2: "استمتع بجميع المزايا",
                  buttonColor: onBoardingScreenColors(index)[2],
                ),
              ],
            ),
          ),
          
          Positioned(
            bottom: isLandscape
                ? screenSize.height * 0.02.h
                : screenSize.height * 0.125.h,
            left: screenSize.width * 0.1.w,
            child: GestureDetector(
              onTap: () {
                if (index < 2) {
                  controller.animateToPage(
                    index + 1,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.easeInOut,
                  );
                } else {
                  context.go("/auth");
                }
              },
              child: Container(
                width: isLandscape ? 50.w : 55.w,
                height: isLandscape ? 50.h : 55.h,
                decoration: BoxDecoration(
                  color: onBoardingScreenColors(index)[2],
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  index < 2 ? Icons.arrow_forward : Icons.check,
                  color: Colors.white,
                  size: isLandscape ? 25.h : 30.h,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: isLandscape
                ? screenSize.height * 0.08.h
                : screenSize.height * 0.15.h,
            right: screenSize.width * 0.1.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3, (i) {
                return CustomIndicator(
                  indicatorColorS: onBoardingScreenColors(index),
                  state: i == index
                      ? 2 // نشط بالكامل
                      : (i == index - 1 || i == index + 1)
                          ? 1 // نصف نشط
                          : 0, // غير نشط
                  isLandscape: isLandscape,
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}

List<Color> onBoardingScreenColors(int index) {
  if (index == 0) {
    return [
      Colors.red.shade100.withOpacity(0.5),
      Colors.red.shade100,
      Colors.red.shade400,
    ];
  } else if (index == 1) {
    return [
      Colors.green.shade100.withOpacity(0.5),
      Colors.green.shade100,
      Colors.green.shade400,
    ];
  } else {
    return [
      Colors.grey.shade200.withOpacity(0.5),
      Colors.grey.shade300,
      const Color.fromARGB(255, 100, 95, 95),
    ];
  }
}
