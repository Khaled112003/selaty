import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/themes/app_styles.dart';
import 'package:selaty/core/widgets/custom_button.dart';

import '../../../../../core/helpers/spacing.dart';

class SuccessItem extends StatelessWidget {
  const SuccessItem({super.key});

  @override
  Widget build(BuildContext context) {
    final size = ScreenHelper.screenSize(context);
    final islandScape = ScreenHelper.isLandscape(context);
    return Padding(
      padding: EdgeInsets.only(bottom: islandScape ? 0.h : 20.h),
      child: Container(
        width: islandScape ? size.width * 0.6 : double.infinity,
        height: islandScape ? size.height * 0.66 : size.height * 0.8,
        decoration: BoxDecoration(
          color: Colors.green.shade400,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          mainAxisAlignment:
              islandScape ? MainAxisAlignment.start : MainAxisAlignment.center,
          children: [
            verticalSpace(islandScape ? 5 : size.height * 0.1),
            Image.asset(
              "assets/images/success_bag_icon.png",
              width: islandScape ? size.width * 0.12 : size.width * 0.5,
            ),
            verticalSpace(islandScape ? 5 : 20.h),
            Text("طلبك ناجح!", style: AppStyles.font22W800.copyWith(color: Colors.white)),
            verticalSpace(islandScape ? 4 : 20.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: islandScape ? 30.w : 20.w, ),
              child: Text(
                "شكرا علي الطلب  ستحصل علي الطلب  خلال بضع دقائق",
                textAlign: TextAlign.center,
                style: AppStyles.font16W600.copyWith(color: Colors.white),
              ),
            ),
            verticalSpace(islandScape ? 10 : 70.h),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: islandScape ? 30.w : 20.w, ),
              child: CustomButton(
                  text: "ترتيب المسار",
                  colortext: Colors.white,
                  backgroundcolor: const Color.fromARGB(221, 34, 34, 34),
                  onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
