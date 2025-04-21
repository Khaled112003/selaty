import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static TextStyle cairoStyle(double size, FontWeight weight) {
    return GoogleFonts.cairo(
      fontSize: size.sp,
      fontWeight: weight,
    );
  }
 



  static TextStyle font26W900 = cairoStyle(26, FontWeight.w900);
  static TextStyle font22W800 = cairoStyle(22, FontWeight.w800);
  static TextStyle font18W700 = cairoStyle(18, FontWeight.w700);
  static TextStyle font16W600 = cairoStyle(16, FontWeight.w600);
  static TextStyle font16W500 = cairoStyle(16, FontWeight.w500);
  static TextStyle font14W500 = cairoStyle(14, FontWeight.w500);
  static TextStyle font16W400 = cairoStyle(16, FontWeight.w400);
  static TextStyle font14W400 = cairoStyle(14, FontWeight.w400);
  static TextStyle font16W700White = cairoStyle(16, FontWeight.w700);
  static TextStyle font16W700Green = cairoStyle(16, FontWeight.w700);
  static TextStyle font18W800 = cairoStyle(18, FontWeight.w800);
  static TextStyle font14W400LineThrough = cairoStyle(14, FontWeight.w400).copyWith(
    decoration: TextDecoration.lineThrough,
  );
  static TextStyle font14W600 = cairoStyle(14, FontWeight.w600);
  static TextStyle font14W400Grey = cairoStyle(14, FontWeight.w400);
  static TextStyle font12W500 = cairoStyle(12, FontWeight.w500);
  static TextStyle font12W600 = cairoStyle(12, FontWeight.w600);
  static TextStyle font20W800 = cairoStyle(20, FontWeight.w800);
  static TextStyle font5W800 = cairoStyle(6, FontWeight.w800);
  static TextStyle font40W900 = cairoStyle(40, FontWeight.w900);

    static TextStyle font50W900 = cairoStyle(50, FontWeight.w900);
    static TextStyle font20W400 = cairoStyle(20, FontWeight.w400);
     static TextStyle font14W900 = cairoStyle(14, FontWeight.w900);
     static TextStyle font50W400 = cairoStyle(50, FontWeight.w400);
     // font30W700
     static TextStyle font30W700 = cairoStyle(30, FontWeight.w700);
     // font20W700
     static TextStyle font20W700 = cairoStyle(20, FontWeight.w700);
     static TextStyle font25W800 = cairoStyle(25, FontWeight.w800);
     static TextStyle font25W700 = cairoStyle(25, FontWeight.w700);
     static TextStyle font30W400 = cairoStyle(30, FontWeight.w400);
          // font22W500
     static TextStyle font22W500 = cairoStyle(22, FontWeight.w500);
     static TextStyle font22W700 = cairoStyle(22, FontWeight.w700);
     static TextStyle font22W400 = cairoStyle(22, FontWeight.w400);
     static TextStyle font22W900 = cairoStyle(22, FontWeight.w900);
     static TextStyle font22W600 = cairoStyle(22, FontWeight.w600); 


}
