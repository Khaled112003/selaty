import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/widgets/appbar_items.dart';
import 'package:selaty/core/widgets/custom_button.dart';
import 'package:selaty/features/shopping_cart/presentation/views/widgets/shopping_cart_item_listview.dart';
import 'package:selaty/features/shopping_cart/presentation/views/widgets/total_payment.dart';

import '../../../../core/helpers/screen_helper.dart';
import '../../../../core/helpers/spacing.dart';

class ShoppingCartScreen extends StatelessWidget {
  const ShoppingCartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isLandscape = ScreenHelper.isLandscape(context);

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
              isLandscape
                  ? Expanded(
                      child: Row(
                        children: [
                          // Left side (cart items list) - 65% of width
                          Expanded(
                            flex: 65,
                            child: ShoppingCartItemListview(),
                          ),
                          horizontalSpace(15),
                          // Right side (payment info and button) - 35% of width
                          Expanded(
                            flex: 35,
                            child: Column(
                              children: [
                                verticalSpace(2.5),
                                TotalPayment(),
                                verticalSpace(5),
                                GestureDetector(
                                    onTap: () => context.push('/empty-cart'),
                                    child: CustomButton(
                                      text: "الدفع",
                                      colortext: Colors.white,
                                      backgroundcolor: Colors.green.shade400,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  : Expanded(
                      child: Column(
                        children: [
                          ShoppingCartItemListview(),
                          verticalSpace(10),
                          TotalPayment(),
                          verticalSpace(10),
                          GestureDetector(
                              onTap: () => context.push('/empty-cart'),
                              child: CustomButton(
                                text: "الدفع",
                                colortext: Colors.white,
                                backgroundcolor: Colors.green.shade400,
                              ))
                        ],
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
