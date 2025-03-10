import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/themes/app_styles.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
        final isLandscape = ScreenHelper.isLandscape(context);

    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              "assets/images/fruits_category.jpg",
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 13.h,
            left: 40.w,
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "خضروات",
                  style: AppStyles.font26W900.copyWith(color: Colors.red),
                ),
                verticalSpace(3),
                Text(
                 "صحيه طازجه%",
                  style:
                      AppStyles.font20W400.copyWith(color: Colors.white),
                ),
                verticalSpace(15),
                Container(
            height: isLandscape ? 10.h : 20.h,
            width: 60.w,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Text(
              "جديد",
              textAlign: TextAlign.center,
              style: isLandscape
                  ? AppStyles.font12W500.copyWith(color: Colors.white)
                  : AppStyles.font12W500.copyWith(color: Colors.white),
            ),
                    ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
