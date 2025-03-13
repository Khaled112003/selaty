import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/themes/app_styles.dart';

class ImageAndUserName extends StatelessWidget {
  const ImageAndUserName({super.key});

  @override
  Widget build(BuildContext context) {
    final isLandscape = ScreenHelper.isLandscape(context);
    return Center(
        child: Container(
      width: double.infinity,
      height: isLandscape
          ? ScreenHelper.screenSize(context).height * 0.4
          : ScreenHelper.screenSize(context).height * 0.2,
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          // الظل
          Positioned(
            bottom: 80.sp,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white.withAlpha(400),
                    blurRadius: 10,
                    spreadRadius: 9,
                    blurStyle: BlurStyle.solid,
                  ),
                ],
              ),
              child: CircleAvatar(
                radius: 65.sp,
                backgroundImage: AssetImage("assets/images/me.jpg"),
              ),
            ),
          ),

          Positioned(
            bottom: 80.sp,
            left: 70.sp,
            right: 0,
            child: Container(
              width: 30.sp,
              height: 30.sp,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.camera_alt,
                color: Colors.white,
                size: 18.sp,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "خالد سعيد محسب",
                  style: AppStyles.font18W700.copyWith(color: Colors.white),
                ),
                Text(
                  " khaled@gmail.com",
                  style: AppStyles.font16W400.copyWith(color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
