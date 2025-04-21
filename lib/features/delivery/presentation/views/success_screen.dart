import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/widgets/appbar_items.dart';
import 'package:selaty/features/delivery/presentation/views/widgets/success_item.dart';

import '../../../../core/helpers/spacing.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
        final islandScape = ScreenHelper.isLandscape(context);

    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
            child: SafeArea(
      child: Column(
        children: [
          AppBarItems(
            title: "طلبك ناجح",
          ),
          verticalSpace(islandScape? 0.h : 30.h),
          SuccessItem()
          
        ],
      ),
            ),
            ),
    );
  }
}