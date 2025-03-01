import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:selaty/core/themes/app_colors.dart';

class AppStyles {
  static TextStyle cairoStyle(double size, FontWeight weight, Color color) {
    return GoogleFonts.cairo(
      fontSize: size.sp,
      fontWeight: weight,
      color: color,
    );
  }

  static TextStyle font26W900 = cairoStyle(26, FontWeight.w900, AppColors.black);
  static TextStyle font22W800 = cairoStyle(22, FontWeight.w800, AppColors.black);
  static TextStyle font18W700 = cairoStyle(18, FontWeight.w700, AppColors.black);
  static TextStyle font16W600 = cairoStyle(16, FontWeight.w600, AppColors.greyMedium);
  static TextStyle font16W500 = cairoStyle(16, FontWeight.w500, AppColors.black);
  static TextStyle font14W500 = cairoStyle(14, FontWeight.w500, AppColors.greyMedium);
  static TextStyle font16W400 = cairoStyle(16, FontWeight.w400, AppColors.black);
  static TextStyle font14W400 = cairoStyle(14, FontWeight.w400, AppColors.greyMedium);
  static TextStyle font16W700White = cairoStyle(16, FontWeight.w700, AppColors.white);
  static TextStyle font16W700Green = cairoStyle(16, FontWeight.w700, AppColors.primaryGreenDark);
  static TextStyle font18W800 = cairoStyle(18, FontWeight.w800, AppColors.black);
  static TextStyle font14W400LineThrough = cairoStyle(14, FontWeight.w400, AppColors.greyMedium).copyWith(
    decoration: TextDecoration.lineThrough,
  );
  static TextStyle font14W600 = cairoStyle(14, FontWeight.w600, AppColors.black);
  static TextStyle font14W400Grey = cairoStyle(14, FontWeight.w400, AppColors.greyMedium);
  static TextStyle font12W500 = cairoStyle(12, FontWeight.w500, AppColors.black);
  static TextStyle font12W600 = cairoStyle(12, FontWeight.w600, AppColors.black);
}
