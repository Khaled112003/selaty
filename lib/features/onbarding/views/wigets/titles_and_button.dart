import 'package:flutter/material.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/themes/app_styles.dart';

class TitlesAndButton extends StatelessWidget {
  const TitlesAndButton(
      {super.key,
      this.isLandscape = false,
      required this.text1,
      required this.text2,
      
      required this.buttonColor, this.onTap});
  final bool isLandscape;
  final String text1, text2;
  final Color buttonColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
         text1,
          textAlign: TextAlign.end,
          textDirection: TextDirection.rtl,
          style: AppStyles.font26W900.copyWith(
            color:buttonColor,
            fontSize: isLandscape ? 22 : 26,
          ),
        ),
        verticalSpace(isLandscape ? 10 : 20),
        Text(
          text2,
          textAlign: TextAlign.end,
          style: AppStyles.font18W800.copyWith(
            color: const Color.fromARGB(255, 106, 105, 105),
            fontSize: isLandscape ? 16 : 18,
          ),
        ),
        verticalSpace(isLandscape ? 40 : 80),
        GestureDetector(
          onTap:onTap ,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: isLandscape ? 40 : 50,
                height: isLandscape ? 40 : 50,
                decoration: BoxDecoration(
                  color:buttonColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: isLandscape ? 25 : 30,
                ),
              ),
              
            ],
          ),
        )
      ],
    );
  }
}

