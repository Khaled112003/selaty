import 'package:flutter/material.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/themes/app_styles.dart';

class TitlesOnboarding extends StatelessWidget {
  const TitlesOnboarding(
      {super.key,
      this.isLandscape = false,
      required this.text1,
      required this.text2,
      
      required this.buttonColor, });
  final bool isLandscape;
  final String text1, text2;
  final Color buttonColor;
  
  @override
  Widget build(BuildContext context) {
    return Align(alignment: AlignmentDirectional.centerStart,
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
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
            
            style: AppStyles.font18W800.copyWith(
              color: const Color.fromARGB(255, 106, 105, 105),
              fontSize: isLandscape ? 16 : 18,
            ),
          )
          ,
          verticalSpace(isLandscape ? 10 : 50),
          
        ],
      ),
    );
  }
}

