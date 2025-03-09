import 'package:flutter/material.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/themes/app_styles.dart';
import 'package:selaty/features/home/presentations/views/widgets/best_seller_grid_view.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    
    final isLandscape = ScreenHelper.isLandscape(context);
    final childAspectRatio = isLandscape ? 1.03: 0.82;
    
    
    final crossAxisCount = isLandscape ? 3 : 2;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                " الاكثر مبيعا",
                style: AppStyles.font18W800,
              ),
              Spacer(),
              Icon(
                Icons.arrow_back_ios_new_rounded,
                color: const Color.fromARGB(255, 0, 0, 0),
                size: 17,
              ),
              Text(
                "مشاهده الكل ",
                style: AppStyles.font12W600.copyWith(color: Colors.grey)
              )
            ],
          ),
        ),
        verticalSpace(10),
        BestSellerGridView(crossAxisCount: crossAxisCount, childAspectRatio: childAspectRatio),
        verticalSpace(20),
      ],
    );
  }
}

