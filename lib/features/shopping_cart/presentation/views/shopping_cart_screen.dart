import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/widgets/appbar_items.dart';
import 'package:selaty/core/widgets/custom_button.dart';
import 'package:selaty/features/shopping_cart/presentation/views/widgets/shopping_cart_item_listview.dart';

import '../../../../core/helpers/spacing.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              AppBarItems(
                title: "عربه التسوق",
              ),
              verticalSpace(10),
              ShoppingCartItemListview(),
              verticalSpace(10),
              GestureDetector(
                  onTap: () => context.push('/empty-cart'),
                  child: CustomButton(
                      text: "الدفع",
                      colortext: Colors.white,
                      backgroundcolor: Colors.green.shade400))
            ],
          ),
        ),
      ),
    );
  }
}
