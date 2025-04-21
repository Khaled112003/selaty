import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/themes/app_styles.dart';
import 'package:selaty/features/home/data/models/shopping_model.dart';

class ShopByOffersItem extends StatelessWidget {
  const ShopByOffersItem({
    super.key,
    required this.shoppingModel,
  });

  final ShoppingModel shoppingModel;

  @override
  Widget build(BuildContext context) {
    final isLandscape = ScreenHelper.isLandscape(context);

    return Container(
      width: 130.w,
      height: isLandscape ? 75.h : 130.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: shoppingModel.color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (shoppingModel.text1.isNotEmpty)
                Text(
                  shoppingModel.text1,
                  style: shoppingModel.textStyle ??
                      (isLandscape
                          ? AppStyles.font20W800.copyWith(color: Colors.white)
                          : AppStyles.font16W400.copyWith(color: Colors.white)),
                  textAlign: TextAlign.center,
                ),
              Text(
                shoppingModel.text2,
                style: shoppingModel.textStyle2 ??
                    (isLandscape
                        ? AppStyles.font50W900.copyWith(color: Colors.white)
                        : AppStyles.font40W900.copyWith(color: Colors.white)),
                textAlign: TextAlign.center,
                overflow: TextOverflow.visible,
              ),
              if (shoppingModel.text3.isNotEmpty)
                Text(
                  shoppingModel.text3,
                  style: shoppingModel.textStyle3 ??
                      (isLandscape
                          ? AppStyles.font20W800.copyWith(color: Colors.white)
                          : AppStyles.font16W700White.copyWith(color: Colors.white)),
                  textAlign: TextAlign.center,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
