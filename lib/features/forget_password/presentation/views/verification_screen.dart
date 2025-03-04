import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/themes/app_styles.dart';
import 'package:selaty/core/widgets/appbar_items.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
            child: Column( crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              
              AppBarItems(
                title: "التحقق من رقم الهاتف",
              ),
              verticalSpace(20),
              Text(
                "ادخل رمز التحقق الذي تم ارساله الى رقم الهاتف الخاص بك",
                style: AppStyles.font16W400.copyWith(color: Colors.grey),
                textDirection: TextDirection.rtl,
              ),
              verticalSpace(70),
              OtpTextField(
                numberOfFields: 4, // عدد الحقول
                borderColor: Color.fromARGB(255, 167, 13, 13), // لون الحدود
                focusedBorderColor: Color.fromARGB(255, 255, 255, 255),
                fillColor: Colors.white,
                filled: true, 
                
               
                showFieldAsBox: true, // إظهار الحقل كمربع
                borderWidth: 2.0, // عرض الحدود
                borderRadius: BorderRadius.circular(12), // انحناء الزوايا
                fieldWidth: 60, // عرض الحقل
                mainAxisAlignment: MainAxisAlignment.center, // محاذاة الحقول
                crossAxisAlignment: CrossAxisAlignment.center, // محاذاة عمودية
                cursorColor: Colors.blue, // لون المؤشر
                enabledBorderColor: Colors.black, // لون الحدود عند عدم التركيز
                disabledBorderColor: Colors.grey, // لون الحدود عند التعطيل
                autoFocus: true, // تركيز تلقائي
                // إخفاء النص (للأمان)
                
                keyboardType: TextInputType.number, // نوع لوحة المفاتيح
                clearText: true, // السماح بمسح النص
                onCodeChanged: (String code) {}, // حدث عند تغيير القيمة
                onSubmit: (String code) {}, // حدث عند الانتهاء من الإدخال
              )
              ,
              verticalSpace(20),
              Text(
                "لم يصل الكود؟",
                style: AppStyles.font14W400.copyWith(color: Colors.grey),
                textDirection: TextDirection.rtl,
              ),
              verticalSpace(5),
              Text(
                "اعادة ارسال رمز جديد",
                style: AppStyles.font14W400.copyWith(color: Colors.red),
                textDirection: TextDirection.rtl,
              ),
              verticalSpace(20),
            
            ]),
          ),
        ),
      ),
    );
  }
}
