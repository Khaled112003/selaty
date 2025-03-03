import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/themes/app_styles.dart';
import 'package:selaty/core/widgets/appbar_items.dart';
import 'package:selaty/core/widgets/auth_textfield.dart';
import 'package:selaty/core/widgets/custom_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final bool isLandscape = screenSize.width > screenSize.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const AppBarItems(),
                  const SizedBox(height: 20),
                  Image.asset(
                    "assets/images/logo.png",
                    width: isLandscape
                        ? screenSize.width * 0.3
                        : screenSize.width * 0.45,
                  ),
                  verticalSpace(30),
                  AuthTextfield(
                    icon: const Icon(Icons.check_circle_outline,
                        color: Colors.green),
                    hintText: "عنوان البريد الالكتروني",
                  ),
                  verticalSpace(20),
                  SignInTextFields(),
                  verticalSpace(30),
                  CustomButton(
                      text: "تسجيل الدخول",
                      colortext: Colors.white,
                      backgroundcolor: Colors.green),
                      verticalSpace(100),
                      
                      
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                            Text( "تسجيل الدخول",style: AppStyles.font14W500,),
                            
                            Icon(Icons.arrow_right,size: 25.sp,)
                          ],),
                          Row(
                            children: [
                            Text( "لديك حساب بالفعل؟",style: AppStyles.font14W500,),
                            
                            
                        ],
                      )
                                    ],
                                  ),
                ]
                        ),
            )
        )));
  }
}

class SignInTextFields extends StatelessWidget {
  const SignInTextFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AuthTextfield(
          hintText: "كلمة المرور",
          obscureText: true,
          icon:
              const Icon(Icons.remove_red_eye, color: Colors.grey),
        ),
        verticalSpace(10),
         Align(alignment: Alignment.centerRight,
          child: Text(" هل نسيت كلمة المرور " ,textAlign: TextAlign.end,
              style:AppStyles.font14W600),
        ),
      ],
    );
  }
}
