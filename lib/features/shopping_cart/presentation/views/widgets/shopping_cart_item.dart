import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/themes/app_styles.dart';

import '../cubit/shopping_cart_cubit.dart';

class ShoppingCartItem extends StatelessWidget {
  final int index;

  const ShoppingCartItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    final isLandscape = ScreenHelper.isLandscape(context);

    return Column(
      children: [
        Slidable(
          key: ValueKey(index),
          startActionPane: ActionPane(
            motion: const StretchMotion(), // تأثير فتح الحركة
            children: [
              SlidableAction(
                onPressed: (context) {
                  context.read<ShoppingCartCubit>().removeItem(index);
                },
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                icon: Icons.delete,
                borderRadius:  BorderRadius.circular(15.r),
                label: 'حذف',
                // يمكن إضافة padding هنا للمباعدة بين زر الحذف والمحتوى
                padding: const EdgeInsets.symmetric(horizontal: 10),
              ),
            ],
          ),
          child: Padding(
            // إضافة مساحة بين Slidable والـ Container
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
              onTap: () {
                Slidable.of(context)?.openStartActionPane(); // عند الضغط، تفتح القائمة الجانبية
              },
              child: Container(
                height: isLandscape ? 77.h : 130.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () => context.read<ShoppingCartCubit>().increment(index),
                            child: Text("+", style: AppStyles.font26W900),
                          ),
                          BlocBuilder<ShoppingCartCubit, Map<int, int>>(
                            builder: (context, quantityMap) {
                              return Text(
                                (quantityMap[index] ?? 1).toString(),
                                style: AppStyles.font20W400,
                              );
                            },
                          ),
                          GestureDetector(
                            onTap: () => context.read<ShoppingCartCubit>().decrement(index),
                            child: Text("-", style: AppStyles.font26W900),
                          ),
                        ],
                      ),
                      SizedBox(width: isLandscape ? 60.w : 50.w),
                      Padding(
                        padding: EdgeInsets.only(top: isLandscape ? 5.h : 15.h),
                        child: BlocBuilder<ShoppingCartCubit, Map<int, int>>(
                          builder: (context, quantityMap) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "321 * ${quantityMap[index] ?? 1}",
                                  style: AppStyles.font12W500.copyWith(color: Colors.green),
                                ),
                                Text("كمثري امريكي", style: AppStyles.font22W500),
                                verticalSpace(4),
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
            ),
          ),
        ),
        verticalSpace(10), // المسافة الفاصلة بين العناصر
      ],
    );
  }
}