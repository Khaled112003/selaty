
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/themes/app_styles.dart';

class TitleCatogrey extends StatelessWidget {
  const TitleCatogrey({
    super.key, required this.title,
  });
  final String title;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Text(title
            ,
            style: AppStyles.font18W800,
          ),
          Spacer(),
          Icon(
            Icons.arrow_back_ios_new_rounded,
            color: const Color.fromARGB(255, 0, 0, 0),
            size: 17.sp,
          ),
          Text(
            "مشاهده الكل ",
            style: AppStyles.font12W600.copyWith(color: Colors.grey)
          )
        ],
      ),
    );
  }
}