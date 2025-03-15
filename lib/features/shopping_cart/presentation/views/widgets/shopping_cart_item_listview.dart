import 'package:flutter/material.dart';
import 'package:selaty/features/shopping_cart/presentation/views/widgets/shopping_cart_item.dart';

class ShoppingCartItemListview extends StatelessWidget {
  const ShoppingCartItemListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder( 
        itemCount: 8, itemBuilder:  (context, index) => ShoppingCartItem(),),
    );
  }
}