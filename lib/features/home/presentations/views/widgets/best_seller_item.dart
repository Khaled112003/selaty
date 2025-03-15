import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/themes/app_styles.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key, required this.img});
  final String img;

  @override
  Widget build(BuildContext context) {
    final isLandscape = ScreenHelper.isLandscape(context);

    return GestureDetector(
      onTap: () {
        context.push('/shopping-cart');
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: isLandscape
                  ? ScreenHelper.screenSize(context).height * 0.25
                  : ScreenHelper.screenSize(context).height * 0.15,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: Image.asset(
                        img,
                        width: ScreenHelper.screenSize(context).width *
                            (isLandscape ? 0.4 : 0.4),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10.h,
                    left: 10.w,
                    child: Icon(
                      CupertinoIcons.heart_fill,
                      color: Colors.green,
                      size: 22,
                    ),
                  ),
                  Positioned(
                    top: 10.h,
                    child: Container(
                      height: isLandscape ? 10.h : 20.h,
                      width: 40.w,
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
                            : AppStyles.font12W500
                                .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(3),
            Container(
              height: isLandscape ? 10.h : 20.h,
              width: isLandscape ? 90.w : 80.w,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Text(
                  "فاكهه",
                  style: AppStyles.font12W500.copyWith(color: Colors.white),
                ),
              ),
            ),
            verticalSpace(3),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "اناناس",
                    style: AppStyles.font12W600.copyWith(color: Colors.grey),
                  ),
                  Text(
                    "100 ج.م",
                    style: AppStyles.font12W600.copyWith(color: Colors.grey),
                  ),
                ],
              ),
            ),
            verticalSpace(10),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "200 ج.م",
                      style: AppStyles.font14W400,
                    ),
                    Container(
                      height: 30.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: Colors.red.shade400,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.bookmark_border,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
