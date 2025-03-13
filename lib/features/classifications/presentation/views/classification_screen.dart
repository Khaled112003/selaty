import 'package:flutter/material.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/widgets/appbar_items.dart';
import 'package:selaty/features/classifications/presentation/views/widgets/classification_item_grid_view.dart';

class ClassificationScreen extends StatelessWidget {
  const ClassificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: AppBarItems(
                  title: "التصنيفات",
                ),
              ),
              verticalSpace(10),
              ClassificationItemGridView(),
            ]),
          ),
        ),
      ),
    );
  }
}
