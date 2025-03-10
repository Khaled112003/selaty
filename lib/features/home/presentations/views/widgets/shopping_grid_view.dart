import 'package:flutter/material.dart';
import 'package:selaty/features/home/data/models/shopping_model.dart';

import 'shopping_offers_item.dart';

class ShopByOffersGridView extends StatelessWidget {
  ShopByOffersGridView(
      {super.key,
      required this.crossAxisCount,
      required this.childAspectRatio});

  final int crossAxisCount;
  final double childAspectRatio;
  final List<ShoppingModel> shoppingList = [
     ShoppingModel(color: Colors.red, text1: "صفه", text2: "\n50%\n", text3: "خصم"),
    ShoppingModel(color: Colors.green, text1: "صفه", text2: "\n30%\n", text3: "خصم"),
    ShoppingModel(color: Colors.blue, text1: "صفه", text2: "\n20%\n", text3: "خصم"),
    ShoppingModel(color: Colors.purple, text1: "صفه", text2: "\n50%\n", text3: "خصم"),
    ShoppingModel(color: Colors.orange, text1: "اقل", text2: "\n50%\n", text3: "خصم"),
    ShoppingModel(color: Colors.pink, text1: "صفه", text2: "\n50%\n", text3: "خصم"),
    ShoppingModel(color: Colors.red, text1: "صفه", text2: "\n50%\n", text3: "خصم"),
    ShoppingModel(color: Colors.green, text1: "صفه", text2: "\n30%\n", text3: "خصم"),
    ShoppingModel(color: Colors.blue, text1: "صفه", text2: "\n20%\n", text3: "خصم"),
      
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.symmetric(horizontal: 10),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => ShopByOffersItem(
        shoppingModel: shoppingList[index],
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: childAspectRatio,
      ),
      itemCount:  6,
    );
  }
}