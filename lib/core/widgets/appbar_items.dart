import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarItems extends StatelessWidget {
  const AppBarItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 45,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey.shade300, width: 1)),
          child: IconButton(
              onPressed: () {
                context.pop();  
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
        ),
        Container(
           width: 45,
          height: 40,
          decoration: BoxDecoration(
              color: Colors.white70,
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
      ],
    );
  }
}
