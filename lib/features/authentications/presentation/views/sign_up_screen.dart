import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/themes/app_styles.dart';
import 'package:selaty/core/widgets/appbar_items.dart';
import 'package:selaty/core/widgets/auth_textfield.dart';
import 'package:selaty/features/authentications/presentation/views/widgets/face_or_google.dart';

import '../../../../core/widgets/custom_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = ScreenHelper.screenSize(context);
    final bool isLandscape = ScreenHelper.isLandscape(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 10, top: 10),
                child: Align(
                  child: SizedBox(
                    width:
                        isLandscape ? screenSize.width * 0.65 : double.infinity,
                    child: Column(children: [
                      AppBarItems(),
                      verticalSpace(isLandscape ? 20 : 40),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Column(
                          
                          children: [
                            Text(
                              "انشاء حساب جديد",
                              style: AppStyles.font18W700,
                            ),
                            Text(
                              "ادخل بياناتك لانشاء حساب جديد",
                              style: AppStyles.font14W400
                                  .copyWith(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      verticalSpace(isLandscape ? 20 : 40),
                      AuthTextfield(hintText: "اسم المستخدم"),
                      verticalSpace(isLandscape ? 8 : 20),
                      AuthTextfield(
                        suffixIcon: const Icon(Icons.check_circle_outline,
                            color: Colors.green),
                        hintText: "عنوان البريد الالكتروني",
                      ),
                      verticalSpace(isLandscape ? 8 : 20),
                      AuthTextfield(
                        hintText: "كلمة المرور",
                        obscureText: true,
                        suffixIcon: const Icon(Icons.remove_red_eye,
                            color: Colors.grey),
                      ),
                      verticalSpace(20),
                      CustomButton(
                        text: "اشتراك",
                        colortext: Colors.white,
                        backgroundcolor: Colors.green,
                        onPressed: () => context.go('/screens'),
                      ),
                      verticalSpace(isLandscape ? 20 : 30),
                      Text(
                        "أو أشترك مع",
                        style: AppStyles.font14W500,
                      ),
                      verticalSpace(isLandscape ? 10 : 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FaceOrGoogle(
                            capitalText: "f",
                            smallText: "Facebook",
                            colorText: Colors.blue,
                          ),
                          FaceOrGoogle(
                            capitalText: "G+",
                            smallText: "Google",
                            colorText: Colors.red,
                          ),
                        ],
                      ),
                      verticalSpace(isLandscape ? 20 : 80),
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
                          ),
                        ],
                      ),
                      verticalSpace(15),
                    ]),
                  ),
                )),
          ),
        ));
  }
}
