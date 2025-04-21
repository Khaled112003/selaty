import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/themes/app_styles.dart';

import '../../../../../core/helpers/spacing.dart';

class TotalPayment extends StatelessWidget {
  const TotalPayment({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final isLandscape = ScreenHelper.isLandscape(context);
    return Container(
      width: isLandscape? 350.w : double.infinity,
      height: isLandscape? 115.h : 190.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Column(spacing: 15.sp,
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
              Text(
                "البنود ",
                textAlign: TextAlign.start,
                style: AppStyles.font16W500.copyWith(color: Colors.grey),
              ),
              Text(
                "المجموع الفرعي ",
                style: AppStyles.font16W500.copyWith(color: Colors.grey),
              ),
              Text(
                "رسوم التوصيل ",
                style: AppStyles.font16W500.copyWith(color: Colors.grey),
              ),
              verticalSpace(10),
              Text(
                "الاجمالي ",
                style: AppStyles.font16W700White.copyWith(color: Colors.black),
              )
            ]),
            Column(spacing: 15.sp, children: [
              Text(
                "2",
                style: AppStyles.font16W500.copyWith(color: Colors.grey),
              ),
              Text(
                "0.0",
                style: AppStyles.font16W500.copyWith(color: Colors.grey),
              ),
              Text(
                "0.0",
                style: AppStyles.font16W500.copyWith(color: Colors.grey),
              ),
              verticalSpace(10),
              Text(
                "3000",
                style: AppStyles.font16W700White.copyWith(color: Colors.black),
              )
            ])
          ],
        ),
      ),
    );
  }
}
