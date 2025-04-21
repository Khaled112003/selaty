import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/widgets/appbar_items.dart';
import 'package:selaty/features/delivery/presentation/views/widgets/payment_details.dart';
import 'package:selaty/features/delivery/presentation/views/widgets/timelines_order.dart';

import '../../../../core/helpers/spacing.dart';

class TrackingOrder extends StatelessWidget {
  const TrackingOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25.w, vertical: 20.h),
            child: Column(
              children: [
                AppBarItems(
                  title: "ترتيب المسار",
                ),
                verticalSpace(10),
                PaymentDetails(),
                verticalSpace(20),
                OrderTimeline()
               
              
            ]),
          ),
        ),
      )

    );
  }
}