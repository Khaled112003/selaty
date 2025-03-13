import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/widgets/auth_textfield.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 55,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.all(10),
          child: Icon(
            Icons.filter_list,
            color: const Color.fromARGB(255, 255, 255, 255),
            size: 26,
          ),
        ),
        horizontalSpace(10),
        Expanded(
          child: AuthTextfield(
            hintText: "البحث في المنتجات",
            suffixIcon: Icon(Icons.search, color: Colors.grey),
            icon: Icon(
              CupertinoIcons.clear_circled_solid,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}