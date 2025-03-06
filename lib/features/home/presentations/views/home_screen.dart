import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/themes/app_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: Column(
          children: [
            const InformationUser(),
          ],
        ),
      ),
    );
  }
}

class InformationUser extends StatelessWidget {
  const InformationUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        
        Column(
          children: [
            Text(
              "خالد محسب",
              style: AppStyles.font16W400,
              textDirection: TextDirection.rtl,
            ),
            Row(
              children: [
                Text(
                  "شبين الكوم",
                  style: AppStyles.font14W400.copyWith(color: Colors.grey),
                ),
                Icon(Icons.location_on,
                    color: const Color.fromARGB(255, 244, 1, 1)),
              ],
            )
          ],
        ),
        horizontalSpace(5),
        CircleAvatar(
          radius: 27.sp,
          backgroundImage: AssetImage("assets/images/me.jpg"),
        ),
      ],
    );
  }
}
