import 'package:flutter/material.dart';

import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/widgets/title_catogrey.dart';


import 'shopping_grid_view.dart';

class ShopByOffers extends StatelessWidget {
  const ShopByOffers({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Column(
      children: [
        TitleCatogrey(
          title: "تسوق حسب العروض",
        ),
        verticalSpace(10),
        ShopByOffersGridView( 
           )
      ],
    );
  }
}



