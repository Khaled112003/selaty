import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/themes/app_styles.dart';

class ClassificationItem extends StatelessWidget {
  const ClassificationItem({super.key, this.titleStyle});
  final TextStyle? titleStyle ;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/frutes-catogrey');
      },
      child: Container(
        height: ScreenHelper.isLandscape(context)
            ? ScreenHelper.screenSize(context).height * 0.35
            : ScreenHelper.screenSize(context).height * 0.15,
        width: ScreenHelper.isLandscape(context)
            ? ScreenHelper.screenSize(context).width * 0.2
            : ScreenHelper.screenSize(context).width * 0.3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 8.0.h, bottom: 4.0.w),
              child: Text(
                "خضروات",
                style: titleStyle ?? AppStyles.font12W600,
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),
            Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  child: Image.asset(
                    "assets/images/fruits_category.jpg",
                    width: double.infinity,
                    height: ScreenHelper.isLandscape(context)
                        ? ScreenHelper.screenSize(context).height * 0.17
                        : ScreenHelper.screenSize(context).height * 0.08,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: -25.w,
                  child: Container(
                    width: ScreenHelper.isLandscape(context) ? 40.w : 60.w,
                    height: 60.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    padding: EdgeInsets.all(2.w),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.red.shade200,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
