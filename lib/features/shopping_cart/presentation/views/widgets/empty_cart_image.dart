import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/themes/app_styles.dart';
import 'package:selaty/core/widgets/custom_button.dart';

import '../../../../../core/helpers/spacing.dart';

class EmptyCartImage extends StatelessWidget {
  const EmptyCartImage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = ScreenHelper.screenSize(context);
    final islandScape = ScreenHelper.isLandscape(context);
    return Padding(
      padding: EdgeInsets.only(bottom: 20.h),
      child: Container(
        width: double.infinity,
        height: islandScape ? size.width * 0.8 : size.height * 0.8,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            verticalSpace(size.height * 0.1),
            Icon(CupertinoIcons.bag, color: Colors.black, size: 150.sp),
            verticalSpace(20.h),
            Text("عربه التسوق فارغه", style: AppStyles.font22W800),
            Text(
              "لا يوجد منتجات في السلة",
              style: AppStyles.font16W600,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 40.h),
              child: CustomButton(
                  text: "الدفع",
                  colortext: Colors.white,
                  backgroundcolor: Colors.green.shade400),
            )
          ],
        ),
      ),
    );
  }
}
