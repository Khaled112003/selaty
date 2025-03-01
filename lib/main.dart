import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/routing/app_routs.dart';


void main() {
  runApp(const Selaty());
  
}


class Selaty extends StatelessWidget {
  const Selaty ({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp.router(
        routerConfig: router,
        
         debugShowCheckedModeBanner: false,
        
      ),
    );
  }
}
