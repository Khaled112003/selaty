import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
          child: Row(
            children: [
              Text(
                "التصنيفات",
                style: AppStyles.font18W700,
              ),
               Spacer(),
               
              Icon(
                Icons.arrow_back_ios_new_rounded,
                color: const Color.fromARGB(255, 0, 0, 0),
                size: 17,
              ),
              GestureDetector(
                onTap: () => context.push('/classification'),
                child: Text("مشاهده الكل ",
                    style: AppStyles.font12W600.copyWith(color: Colors.grey)),
              )
            ],
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

