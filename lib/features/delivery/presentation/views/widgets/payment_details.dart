import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/themes/app_styles.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final size = ScreenHelper.screenSize(context);
    final islandScape = ScreenHelper.isLandscape(context);
    return Container(
      width: islandScape ? size.width * 0.5 : double.infinity,
      height: islandScape ? 75.h : 110.h,
      decoration: BoxDecoration(
        color: Colors.green.shade400,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "معرف الطلب : 0oljfkfk2",
                  style: AppStyles.font16W700White
                      .copyWith(color: Colors.white),
                ),
                Text("تاريخ الطلب : 12/12/2022",
                    style:
                        AppStyles.font14W400.copyWith(color: Colors.white)),
                verticalSpace(5),
                Row(
                  children: [
                    Text("البنود : 2",
                        style: AppStyles.font14W400
                            .copyWith(color: Colors.white)),
                    horizontalSpace(40),
                    Text("الاجمالي : 20 ريال",
                        style: AppStyles.font14W400
                            .copyWith(color: Colors.white)),
                  ],
                ),
              ],
            ),
            Container(
              width: islandScape ? 110.w : 100.w,
              height: islandScape ? 90.h : 85.h,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.payment,
                color: Colors.black,
                size: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
