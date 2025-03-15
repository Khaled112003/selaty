import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/themes/app_styles.dart';

class AppBarItems extends StatelessWidget {
  const AppBarItems({
    super.key,
    this.title,
  });
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 45,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade300, width: 1)),
          child: IconButton(
              onPressed: () {
                // Navigate back to the previous screen
              },
              icon: const Icon(
                Icons.archive_outlined,
                color: Colors.black,
              )),
        ),
        Text(
          title ?? "",
          style: AppStyles.font16W600.copyWith(color: Colors.black),
        ),
        Container(
          width: 45,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade300, width: 1)),
          child: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.black,
              )),
        ),
      ],
    );
  }
}
