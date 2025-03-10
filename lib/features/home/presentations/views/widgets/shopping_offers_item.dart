import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/themes/app_styles.dart';
import 'package:selaty/features/home/data/models/shopping_model.dart';

class ShopByOffersItem extends StatelessWidget {
  const ShopByOffersItem({
    super.key, required this.shoppingModel,
  });
  final ShoppingModel shoppingModel ;

  @override
  Widget build(BuildContext context) {
    final isLandscape = ScreenHelper.isLandscape(context);
    return Container(
        width: 130.w,
        height: ScreenHelper.isLandscape(context) ? 75.h : 130.h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: shoppingModel.color),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(alignment: Alignment.center,
                child: Text.rich(
                  TextSpan(
                    children: [
                      WidgetSpan(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Text(
                            shoppingModel.text1,
                            style: isLandscape
                                ? AppStyles.font20W800.copyWith(color: Colors.white)
                                : AppStyles.font16W700White
                                    .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                      TextSpan(
                        text: shoppingModel.text2,
                        style: isLandscape
                            ? AppStyles.font50W900.copyWith(color: Colors.white)
                            : AppStyles.font40W900.copyWith(
                                color: Colors.white,
                              ),
                      ),
                      WidgetSpan(
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Text(
                            shoppingModel.text3,
                            style: isLandscape
                                ? AppStyles.font20W800.copyWith(color: Colors.white)
                                : AppStyles.font16W700White
                                    .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
