import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIndicator extends StatelessWidget {
  final int state; // 0 = inactive, 1 = semi-active, 2 = active
  final bool isLandscape;

  const CustomIndicator({
    super.key,
    required this.state,
    this.isLandscape = false, required this.indicatorColorS,
  });
  final List<Color>  indicatorColorS;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    // اختيار اللون بناءً على الحالة
    Color indicatorColor;
    if (state == 2) {
      indicatorColor = indicatorColorS.toList()[2]; // الحالة النشطة
    } else if (state == 1) {
      indicatorColor = indicatorColorS .toList()[1]; // حالة متوسطة
    } else {
      indicatorColor = indicatorColorS.toList()[0] ; // غير نشط
    }

    return AnimatedContainer(
      width: state == 2
          ? (isLandscape ? screenWidth * 0.04 : screenWidth * 0.04)
          : (state == 1
              ? (isLandscape ? screenWidth * 0.03 : screenWidth * 0.03)
              : (isLandscape ? screenWidth * 0.02 : screenWidth * 0.02)),
      height: isLandscape ? screenHeight * 0.008 : screenHeight * 0.01,
      margin: EdgeInsetsDirectional.symmetric(horizontal: 2.r),
      duration: const Duration(milliseconds: 500),
      decoration: BoxDecoration(
        borderRadius: BorderRadiusDirectional.circular(50),
        color: indicatorColor,
      ),
    );
  }
}
