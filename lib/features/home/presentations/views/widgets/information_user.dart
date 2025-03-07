import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/themes/app_styles.dart';

class InformationUser extends StatelessWidget {
  const InformationUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Row(
       
        children: [
         CircleAvatar(
            radius: 25.sp,
            backgroundImage: AssetImage("assets/images/me.jpg"),
          ),
          horizontalSpace(5),
          
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
          const Spacer(),
        
             Container(
             width: 40,
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
                  Icons.camera_alt_rounded,
                  color: Colors.black,
                )),
          ), 
          
          
        ],
      ),
    );
  }
}