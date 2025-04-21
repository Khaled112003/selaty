import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/themes/app_styles.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  

  @override
  void initState() {
    super.initState();

    

    Future.delayed(const Duration(milliseconds: 5000), () {
      context.go("/onboarding");
      
    });
  }

 

  @override
  Widget build(BuildContext context) {
    final Size screenSize = ScreenHelper.screenSize(context);
    final bool isLandscape = ScreenHelper.isLandscape(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/images/background.jpg",
                fit: BoxFit.cover),
          ),
          Center(
            child: SizedBox(
              width: isLandscape
                  ? screenSize.width * 0.3
                  : screenSize.width * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo.png",
                    width: isLandscape
                        ? screenSize.width * 0.2
                        : screenSize.width * 0.5,
                  ),
                  Text("ســــلتي",
                      style:
                          AppStyles.font50W400.copyWith(color: Colors.red)),
                  Text("S e l a t y", style: AppStyles.font26W900),
                  verticalSpace(isLandscape ? 10 : 50),
                  Image.asset(
                    "assets/images/loading.gif",
                    width: isLandscape
                        ? screenSize.width * 0.05
                        : screenSize.width * 0.12,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
