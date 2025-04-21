import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/features/onbarding/views/wigets/titles_onboarding.dart';

class OnboardingBody extends StatelessWidget {
  final bool isLandscape;
  final Icon icon;
  final Color color1, color2, color3;
  final String text1, text2;
  final Color buttonColor;
  final IconData? iconData;

  const OnboardingBody({
    super.key,
    this.isLandscape = false,
    required this.icon,
    required this.color1,
    required this.color2,
    required this.color3,
    required this.text1,
    required this.text2,
    required this.buttonColor,
    this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    final double sizeFactor = isLandscape ? 0.88 : 1.40;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              _buildCircle(180 * sizeFactor, color1),
              _buildCircle(150 * sizeFactor, color2),
              Stack(
                alignment: Alignment.center,
                children: [
                  _buildCircle(120 * sizeFactor, color3),
                  Icon(iconData ??
                    Icons.home,
                    color: Colors.white,
                    size: 60.h * sizeFactor,
                  ),
                ],
              ),
            ],
          ),
          TitlesOnboarding(
            buttonColor: buttonColor,
            text1: text1,
            text2: text2,
          ),
        ],
      ),
    );
  }
}

Widget _buildCircle(double size, Color color) {
  return Container(
    width: size,
    height: size,
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle,
    ),
  );
}
