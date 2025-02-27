import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/helpers/spacing.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    
    _controller = AnimationController(
      duration: const Duration(milliseconds: 3000),
      vsync: this,
    );
    
    _animation = Tween<double>(begin: 0.2, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );
    
    _controller.forward();
    
    Future.delayed(const Duration(milliseconds: 5000), () {
      GoRouter.of(context).go('/onboarding');
      
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.sizeOf(context);
    final bool isLandscape = screenSize.width > screenSize.height;

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/images/background.jpg", fit: BoxFit.cover),
          ),
          Center(
            child: SizedBox(
              width: isLandscape ? screenSize.width * 0.3 : screenSize.width * 0.5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //  ScaleTransition للرسوم المتحركة
                  ScaleTransition(
                    scale: _animation,
                    child: Image.asset("assets/images/logo.png"),
                  ),
                  verticalSpace(50),
                  Image.asset(
                    "assets/images/loading.gif",
                    width: isLandscape ? screenSize.width * 0.05 : screenSize.width * 0.12,
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