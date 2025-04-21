import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/widgets/custom_button.dart';

class SignInOrSignUp extends StatelessWidget {
  const SignInOrSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = ScreenHelper.screenSize(context);
    final bool isLandscape = ScreenHelper.isLandscape(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/images/background.jpg",
                fit: isLandscape ? BoxFit.fill : BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/logo.png",
                      width: isLandscape
                          ? screenSize.width * 0.2
                          : screenSize.width * 0.5,
                    ),
                    verticalSpace(isLandscape ? 20 : 50),
                    CustomButton(
                        onPressed: () => context.push('/sign-in'),
                        text: "تسجيل الدخول",
                        colortext: Colors.white,
                        backgroundcolor: Colors.red),
                    verticalSpace(10),
                    CustomButton(
                        onPressed: () => context.push('/sign-up'),
                        text: "انشئ حساب",
                        colortext: Colors.white,
                        backgroundcolor: Colors.green)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
