import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/themes/app_styles.dart';
import 'package:selaty/core/widgets/appbar_items.dart';
import 'package:selaty/core/widgets/custom_button.dart';

class ForgetPassScreen extends StatelessWidget {
  const ForgetPassScreen({super.key});

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
                AppBarItems(
                  title: "التحقق من رقم الهاتف",
                ),
                verticalSpace(20),
                Text(
                  "لقد ارسلنا رمز التحقق الى رقم الهاتف الخاص بك الي رقم 0123164158",
                  style: AppStyles.font14W600.copyWith(color: Colors.grey),
                  textDirection: TextDirection.rtl,
                ),
                verticalSpace(70),
                SizedBox(
                   width: isLandscape ? screenSize.width * 0.5 : double.infinity,
                  child: IntlPhoneField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'أدخل رقم الهاتف',
                      hintStyle: AppStyles.font14W400
                          .copyWith(color: Colors.grey.shade400),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 244, 239, 239),
                            width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: const Color.fromARGB(255, 239, 237, 237),
                            width: 1),
                      ),
                    ),
                    initialCountryCode: 'EG',
                    textAlign: TextAlign.right,
                    showDropdownIcon: true,
                    dropdownIconPosition: IconPosition.trailing,
                    invalidNumberMessage: 'رقم هاتف غير صحيح',
                  ),
                ),
                verticalSpace(20),
                CustomButton(
                    text: "تأكيد",
                    colortext: Colors.white,
                    backgroundcolor: Colors.green, onPressed: () {
                      GoRouter.of(context).push('/verification');
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
