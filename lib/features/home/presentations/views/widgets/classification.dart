import 'package:flutter/material.dart';
import 'package:selaty/core/themes/app_styles.dart';
import 'package:selaty/features/home/presentations/views/widgets/classification-item-listview.dart';

class Classification extends StatelessWidget {
  const Classification({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Text(
            "التصنيفات",
            style: AppStyles.font18W700,
          ),
        ),
        SizedBox(
          height: 150, 
          child: ClassificationItemListView(),
        )
      ],
    );
  }
}

