import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/widgets/appbar_items.dart';
import 'package:selaty/features/shopping_cart/presentation/views/widgets/empty_cart_image.dart';

import '../../../../core/helpers/spacing.dart';

class EmptyCartScreen extends StatelessWidget {
  const EmptyCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
          child: SafeArea(
            child: Column(
              children: [
                AppBarItems(
                  title: "عربه التسوق",
                ),
                verticalSpace(10.h),
                EmptyCartImage()
                
              ],
            ),
          ),
        ),
            
          )
        ],
      ),
    );
  }
}
