import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/themes/app_styles.dart';
import 'package:selaty/core/widgets/appbar_items.dart';
import 'package:selaty/core/widgets/custom_button.dart';
import 'package:selaty/features/authentications/presentation/views/widgets/sign_in_textfields.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
     final Size screenSize = ScreenHelper.screenSize(context);
    final bool isLandscape = ScreenHelper.isLandscape(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
                padding:  EdgeInsets.only(
                    left: 20.w, right: 20.w, bottom: 10.h, top: 10.h),
                child: SingleChildScrollView(
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                            width:isLandscape?screenSize.width*0.65:double.infinity ,
                    
                      child: Column( mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        const AppBarItems(),
                        verticalSpace(isLandscape ? 1 : 20),
                        Image.asset(
                          "assets/images/logo.png",
                          width: isLandscape
                            ? screenSize.width * 0.09
                            : screenSize.width * 0.5,
                        ),
                        verticalSpace(isLandscape ? 1 : 30),
                       
                        SignInTextFields(),
                        verticalSpace(isLandscape ? 4 : 10),
                        GestureDetector(
                          onTap: () => context.push('/forget-password'),
                          child: Row(
                            children: [
                              Text(" هل نسيت كلمة المرور ",
                                  
                                  style: AppStyles.font14W600),
                            ],
                          ),
                        ),
                        verticalSpace(isLandscape ? 2 : 30),
                        CustomButton(
                            text: "تسجيل الدخول",
                            colortext: Colors.white,
                            backgroundcolor: Colors.green,
                            onPressed: () => context.go('/screens'),
                            ),
                            
                        verticalSpace(isLandscape? 10: 100),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "تسجيل الدخول",
                                  style: AppStyles.font14W500,
                                ),
                                Icon(
                                  Icons.arrow_right,
                                  size: 25.sp,
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "لديك حساب بالفعل؟",
                                  style: AppStyles.font14W500,
                                ),
                              ],
                            )
                          ],
                        ),
                        verticalSpace(isLandscape ? 0 : 10),
                      ]),
                    ),
                  ),
                ))));
  }
}
