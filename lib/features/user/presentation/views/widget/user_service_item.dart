import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/themes/app_styles.dart';

class UserServiceItem extends StatelessWidget {
  const UserServiceItem({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 80,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
                child: Icon(
              icon,
              color: Colors.redAccent,
              size: 30.sp,
            )),
            Text(
              title,
              style: AppStyles.font16W700White.copyWith(color: Colors.black),
              textAlign: TextAlign.center,
            )
          ],
        ));
  }
}
