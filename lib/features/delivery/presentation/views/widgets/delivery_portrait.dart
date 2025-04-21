import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/themes/app_styles.dart';
import 'package:selaty/core/widgets/appbar_items.dart';
import 'package:selaty/core/widgets/custom_button.dart';

import 'delivery_item.dart';

class DeliveryPortrait extends StatelessWidget {
  const DeliveryPortrait({
    super.key,
    required this.isLandscape,
    required this.screenSize,
  });

  final bool isLandscape;
  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarItems(title: "عنوان التسليم"),
              verticalSpace(40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text("يشحن الي:",
                    style: AppStyles.font16W700White
                        .copyWith(color: Colors.grey)),
              ),
              const DeliveryItem(id: 1),
              const DeliveryItem(id: 2),
              verticalSpace(
                  isLandscape ? 20.h : screenSize.height * 0.25),
              Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: CustomButton(
                  onPressed: () => context.push('/success'),
                  text: "التسليم لهذا العنوان",
                  colortext: Colors.white,
                  backgroundcolor: Colors.green.shade400,
                ),
              ),
            ],
          ),
        ),
      );
  }
}