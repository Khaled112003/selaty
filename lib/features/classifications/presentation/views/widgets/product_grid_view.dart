import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/features/home/presentations/views/widgets/best_seller_item.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});
  

  @override
  Widget build(BuildContext context) {
     final isLandscape = ScreenHelper.isLandscape(context);
    return SizedBox(
      height:isLandscape? 230.h:  490.h, 

      child: GridView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) =>
            BestSellerItem(img: "assets/images/Strawberry.jpg"),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:isLandscape? 3: 2,
          mainAxisExtent:isLandscape? 132.h:  225.h,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
         
        ),
        itemCount: 8,
      ),
    );
  }
}