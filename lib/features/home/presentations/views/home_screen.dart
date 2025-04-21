import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/widgets/search_item.dart';
import 'package:selaty/features/home/presentations/views/widgets/best_seller.dart';
import 'package:selaty/features/home/presentations/views/widgets/hight_sales.dart';
import 'package:selaty/features/home/presentations/views/widgets/information_user.dart';
import 'package:selaty/features/home/presentations/views/widgets/opportunities.dart';
import 'package:selaty/features/home/presentations/views/widgets/shop_by_offers.dart';

import 'widgets/classification.dart';
import 'widgets/fresh_and_fast.dart';
import 'widgets/image_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.only(right:  10.0.w ,top: 10.0.h ,bottom: 10.0.h ,left: 5.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const InformationUser(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric( vertical: 10),
                  child: SearchItem(),
                ),
                HighestSales(),
                Classification(),
                verticalSpace(10),
                BestSeller(),
                ShopByOffers(),
                verticalSpace(10),
                FreshAndFast(),
                verticalSpace(20),
                ImageItem(),
                Opportunities(),
                verticalSpace(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
