import 'package:flutter/material.dart';
import 'package:selaty/core/themes/app_styles.dart';

class FaceOrGoogle extends StatelessWidget {
  const FaceOrGoogle(
      {super.key,
      required this.capitalText,
      required this.smallText,
      required this.colorText});
  final String capitalText;
  final String smallText;
  final Color colorText;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 70,
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: colorText, width: 1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            capitalText,
            style: AppStyles.font20W800.copyWith(color:colorText),
          ),
          Text(
            smallText,
            style: AppStyles.font14W500.copyWith(color: colorText),
          ),
        ],
        
      ),

    );
  }
}