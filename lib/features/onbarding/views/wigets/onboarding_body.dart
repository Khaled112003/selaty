import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/features/onbarding/views/wigets/titles_and_button.dart';

class OnboardingBody extends StatelessWidget {
  final bool isLandscape;
  final Icon icon;
  final Color color1,color2,color3;
  final String text1,text2;
  final Color buttonColor;
  final void Function()? onTap;
  const OnboardingBody({super.key, this.isLandscape = false, required this.icon, required this.color1, required this.color2, required this.color3, required this.text1, required this.text2, required this.buttonColor, this.onTap});
  

  @override
  Widget build(BuildContext context) {
    
    final double sizeFactor = isLandscape ? 1.1 : 1.40;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              _buildCircle(180 * sizeFactor, color1),
              _buildCircle(150 * sizeFactor, color2),
              
             
              Stack(
                alignment: Alignment.center,
                children: [
                  _buildCircle(120 * sizeFactor, color3 ),
                  Icon(
                    Icons.home, 
                    color: Colors.white, 
                    size: 65.h *sizeFactor, 
                  ),
                ],
              ),
            ],
          ),
          TitlesAndButton(buttonColor:buttonColor ,text1: text1, text2: text2,onTap: onTap,),
          
        ],
      ),
    );
  }
}

Widget _buildCircle(double size, Color color) {
  return Container(
    width: size,
    height: size,
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle,
    ),
  );
}
