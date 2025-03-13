import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/widgets/appbar_items.dart';

class UpperPartScreen extends StatelessWidget {
  const UpperPartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isLandscape = ScreenHelper.isLandscape(context);
    final screenSize = ScreenHelper.screenSize(context);

    return Stack(
      clipBehavior: Clip.none,
      children: [
      Container(
        width: double.infinity,
        height:isLandscape ? screenSize.height * 0.35 : screenSize.height * 0.25,
        color: Colors.green.shade300,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.w, vertical:isLandscape ? 20.h : 50.h),
          child: Column(
            children: [
              AppBarItems(
                title: "الفاكهه",
                
              )
            ],
          ),
        ),
      ),
      Positioned(
        bottom: -50,
        left: 0,
        right: 0,
        child: Container(
          width: ScreenHelper.isLandscape(context) ? 40.w : 80.w,
          height:isLandscape ? 110.w : 90.w,
          decoration: BoxDecoration(
            color: Colors.grey.shade100.withAlpha(60),
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.all(10.w),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            padding: EdgeInsets.all(8.w),
            child: Image.asset(
              "assets/images/fruit_icon.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    ]);
  }
}
