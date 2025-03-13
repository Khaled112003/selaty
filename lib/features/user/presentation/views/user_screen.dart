import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/screen_helper.dart';

import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/widgets/appbar_items.dart';
import 'package:selaty/features/home/presentations/views/widgets/log_out.dart';
import 'package:selaty/features/user/presentation/views/user_service_grid_view.dart';

import 'widget/image_and_user_name.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final islandscape = ScreenHelper.isLandscape(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: islandscape ? 80 : 30.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarItems(),
              verticalSpace(40),
              ImageAndUserName(),
              verticalSpace(40),
              UserServiceItemGridView(),
              verticalSpace(40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Logout(
                    color: Colors.red,
                    title: "تسجيل الخروج",
                    icon: Icons.logout,
                  ),
                  Logout(
                    color: Colors.green,
                    title: " الدعم الفني",
                    icon: Icons.support,
                  ),
                ],
              ),
              verticalSpace(40),
            ],
          ),
        ),
      ),
    );
  }
}


