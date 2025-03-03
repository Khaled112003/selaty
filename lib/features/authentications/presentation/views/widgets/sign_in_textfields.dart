import 'package:flutter/material.dart';
import 'package:selaty/core/helpers/spacing.dart';
import 'package:selaty/core/themes/app_styles.dart';
import 'package:selaty/core/widgets/auth_textfield.dart';

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
