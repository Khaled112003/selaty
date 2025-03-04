import 'package:flutter/material.dart';
import 'package:selaty/core/helpers/spacing.dart';

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
                      icon: const Icon(Icons.check_circle_outline,
                          color: Colors.green),
                      hintText: "عنوان البريد الالكتروني",
                    ),
                    verticalSpace(20),
        AuthTextfield(
          hintText: "كلمة المرور",
          obscureText: true,
          icon:
              const Icon(Icons.remove_red_eye, color: Colors.grey),
        ),
        
      ],
    );
  }
}
