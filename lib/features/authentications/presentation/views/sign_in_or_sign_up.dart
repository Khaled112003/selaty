import 'package:flutter/material.dart';

class SignInOrSignUp extends StatelessWidget {
  const SignInOrSignUp({super.key});

  @override
  Widget build(BuildContext context) {
     final Size screenSize = MediaQuery.of(context).size;
  final bool isLandscape = screenSize.width > screenSize.height;
    return Scaffold(body: 
    Stack(
      children: [
         Positioned.fill(
            child: Image.asset(
              "assets/images/background.jpg",
              fit: isLandscape ? BoxFit.fill : BoxFit.cover,
            ),
          ),
      ],
    ),);
  }
}