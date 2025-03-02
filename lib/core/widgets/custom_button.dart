import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:selaty/core/themes/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.colortext,
      required this.backgroundcolor,
      this.radius, this.onPressed, this.width, this.height});
  final String text;
  final Color colortext;
  final Color backgroundcolor;
  final BorderRadius? radius;
  final void Function()? onPressed;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
     final Size screenSize = MediaQuery.of(context).size;
  final bool isLandscape = screenSize.width > screenSize.height;
    return SizedBox(
      width: isLandscape ? screenSize.width * 0.5 : double.infinity,
      height: 60,


      child: TextButton(
        
          style: TextButton.styleFrom(
              backgroundColor: backgroundcolor,
              shape: RoundedRectangleBorder(
                  borderRadius: radius ?? BorderRadius.circular(10))),
          onPressed: onPressed,
          child: Text(
            text,
            style:AppStyles.font16W600.copyWith(color: Colors.white),
          )),
    );
  }
}
