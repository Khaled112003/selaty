import 'package:flutter/material.dart';
import 'package:selaty/core/helpers/screen_helper.dart';
import 'package:selaty/core/helpers/spacing.dart';

import 'package:selaty/core/widgets/auth_textfield.dart';

class SignInTextFields extends StatelessWidget {
  const SignInTextFields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isLandscape = ScreenHelper.isLandscape(context);
    return Column(
      children: [
         AuthTextfield(
                      suffixIcon: const Icon(Icons.check_circle_outline,
                          color: Colors.green),
                      hintText: "عنوان البريد الالكتروني",
                    ),
                    verticalSpace(isLandscape ? 4 : 20),
        AuthTextfield(
          hintText: "كلمة المرور",
          obscureText: true,
          suffixIcon:
              const Icon(Icons.remove_red_eye, color: Colors.grey),
        ),
        
      ],
    );
  }
}
