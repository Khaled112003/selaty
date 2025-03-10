import 'package:flutter/material.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/widgets/title_catogrey.dart';
import 'package:selaty/features/home/presentations/views/widgets/best_seller_grid_view.dart';

class BestSeller extends StatelessWidget {
  const BestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    
    final isLandscape = ScreenHelper.isLandscape(context);
    final childAspectRatio = isLandscape ? 1.03: 0.81;
    
    
    final crossAxisCount = isLandscape ? 3 : 2;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleCatogrey(title: " الاكثر مبيعا",),
        verticalSpace(10),
        BestSellerGridView(crossAxisCount: crossAxisCount, childAspectRatio: childAspectRatio),
        verticalSpace(20),
      ],
    );
  }
}



