import 'package:flutter/material.dart';

import 'package:selaty/core/widgets/search_item.dart';
import 'package:selaty/features/classifications/presentation/views/widgets/product_grid_view.dart';
import 'package:selaty/features/classifications/presentation/views/widgets/upper_part.dart';

class FrutesCatogreyScreen extends StatelessWidget {
  const FrutesCatogreyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      
      body: SingleChildScrollView(
        child: Column(
          children: [
          UpperPartScreen(),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40,top: 50),
            child: Column(
              children: [
                SearchItem(),
                ProductGridView(),
                
                
            
            
              ],
            ),
          )
          ],
        ),
      ) ,
    );
  }
}

