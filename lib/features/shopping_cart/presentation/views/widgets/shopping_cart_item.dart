import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/themes/app_styles.dart';

import '../cubit/shopping_cart_cubit.dart';

class ShoppingCartItem extends StatelessWidget {
  const ShoppingCartItem({super.key});

  @override
  Widget build(BuildContext context) {
    final isLandscape = ScreenHelper.isLandscape(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Container(
        
        height:isLandscape ? 80.h : 150.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: () => context.read<ShoppingCartCubit>().increment(),
                    child: Text("+", style: AppStyles.font26W900),
                  ),
                  BlocBuilder<ShoppingCartCubit, int>(
                    builder: (context, quantity) {
                      return Text(quantity.toString(),
                          style: AppStyles.font20W400);
                    },
                  ),
                  GestureDetector(
                    onTap: () => context.read<ShoppingCartCubit>().decrement(),
                    child: Text("-", style: AppStyles.font26W900),
                  ),
                ],
              ),
              SizedBox(width: 40.w),
              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: BlocBuilder<ShoppingCartCubit, int>(
                  builder: (context, quantity) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("321 * $quantity",
                            style: AppStyles.font12W500
                                .copyWith(color: Colors.green)),
                        Text("كمثري امريكي", style: AppStyles.font20W400),
                        Text("1kg", style: AppStyles.font14W500),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
