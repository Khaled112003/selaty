import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/widgets/custom_button.dart';

class SignInOrSignUp extends StatelessWidget {
  const SignInOrSignUp({super.key});

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
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    width: isLandscape
                        ? screenSize.width * 0.3
                        : screenSize.width * 0.5,
                  ),
                  verticalSpace(50),
                  CustomButton(
                    onPressed: () => context.push('/sign-in'),
                      text: "تسجيل الدخول",
                      colortext: Colors.white,
                      backgroundcolor: Colors.red),
                  verticalSpace(20),
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
    );
  }
}
