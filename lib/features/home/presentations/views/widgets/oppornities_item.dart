import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/themes/app_styles.dart';

class OpportunitiesItem extends StatelessWidget {
  const OpportunitiesItem({super.key});

  @override
  Widget build(BuildContext context) {
    final isLandscape = ScreenHelper.isLandscape(context);
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: isLandscape ? 150.w : 130.w,
          height: isLandscape ? 110.h : 170.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(5.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("مانجا عويسي", style: AppStyles.font12W500),
                    Text("خصم 10% فوائد", style: AppStyles.font14W900),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Center(
                  child: Image.asset(
                    "assets/images/mango.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      )),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          bottom: isLandscape ? 20.h : 25.h,
          right: 2.w,
          child: Center(
            child: Container(
              width: 25.w,
              height: 20.w,
              decoration: const BoxDecoration(
                color: Colors.redAccent,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 14.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
