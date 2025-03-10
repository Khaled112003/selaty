import 'package:flutter/material.dart';
import 'package:selaty/core/helpers/screen_helper.dart';

import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/widgets/title_catogrey.dart';


import 'shopping_grid_view.dart';

class ShopByOffers extends StatelessWidget {
  const ShopByOffers({super.key});

  @override
  Widget build(BuildContext context) {
    final isLandscape = ScreenHelper.isLandscape(context);
    final childAspectRatio = isLandscape ? 1.7 : 0.88;
    final crossAxisCount = isLandscape ? 3 : 3;
    return Column(
      children: [
        TitleCatogrey(
          title: "تسوق حسب العروض",
        ),
        verticalSpace(10),
        ShopByOffersGridView(
            crossAxisCount: crossAxisCount, childAspectRatio: childAspectRatio)
      ],
    );
  }
}



