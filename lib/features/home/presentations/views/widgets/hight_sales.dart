import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/themes/app_styles.dart';

class HighestSales extends StatelessWidget {
  const HighestSales({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric (horizontal: 10),
          child: Row(
            children: [
              Text(
                "القيمه الافضل",
                style: AppStyles.font14W400,
              ),
              horizontalSpace(7),
              Text(
                "اعلي المبيعات ",
                style: AppStyles.font12W600.copyWith(color: Colors.grey),
              ),
              Spacer(),
              Icon(
                Icons.arrow_back_ios_new_rounded,
                color: const Color.fromARGB(255, 0, 0, 0),
                size: 17,
              ),
              Text("مشاهده الكل ",
                  style: AppStyles.font12W600.copyWith(color: Colors.grey))
            ],
          ),
        ),
        verticalSpace(10),
        SizedBox(
          height:ScreenHelper.isLandscape(context)? 200.h:160.h,
          width: double.infinity,
          child: ListView(
         
            scrollDirection: Axis.horizontal,
            children: List.generate(
                5,
                (index) => Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: Image.asset(
                        "assets/images/fruitsimg.jpg",
                        fit: BoxFit.fill,
                      ),
                    ))),
          ),
        )
      ],
    );
  }
}
