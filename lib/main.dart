import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/routing/app_routs.dart';

void main() {
  runApp(const Selaty());
}

class Selaty extends StatelessWidget {
  const Selaty({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        // تحديد حجم التصميم بناءً على اتجاه الشاشة
        final designSize = orientation == Orientation.portrait
            ? const Size(375, 812)
            : const Size(812, 375);

        return ScreenUtilInit(
          designSize: designSize,
          minTextAdapt: true, // تكييف النص تلقائيًا مع اتجاه الشاشة
          splitScreenMode: true, // دعم الشاشات القابلة للطي
          builder: (context, child) {
            return MaterialApp.router(
              
              locale: const Locale('ar'), 
              builder: (context, child) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                    textScaleFactor: orientation == Orientation.portrait ? 1.0 : 1.1,
                  ),
                  child: Directionality(
                    textDirection: TextDirection.rtl,
                    child: child!,
                  ),
                );
              },
              routerConfig: router,
              debugShowCheckedModeBanner: false,
            );
          },
        );
      },
    );
  }
}