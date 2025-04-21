import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/themes/app_styles.dart';
import 'package:selaty/core/widgets/appbar_items.dart';
import 'package:selaty/core/widgets/custom_button.dart';

import 'delivery_item.dart';

class DeliveryLandScape extends StatelessWidget {
  const DeliveryLandScape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const AppBarItems(title: "عنوان التسليم"),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 20.sp, horizontal: 10.sp),
                  child: Text("يشحن الي:",
                      style: AppStyles.font16W700White
                          .copyWith(color: Colors.grey)),
                ),
                Expanded(child: const DeliveryItem(id: 1)),
                horizontalSpace(10),
                Expanded(child: const DeliveryItem(id: 2)),
              ],
            ),
            verticalSpace(20),
            CustomButton(
              onPressed: () => context.push('/success'),
              text: "التسليم لهذا العنوان",
              colortext: Colors.white,
              backgroundcolor: Colors.green.shade400,
            ),
          ],
        ),
      );
  }
}
