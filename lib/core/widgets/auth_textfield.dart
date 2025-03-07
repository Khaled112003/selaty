import 'package:flutter/material.dart';
import 'package:selaty/core/themes/app_styles.dart';

class AuthTextfield extends StatelessWidget {
  const AuthTextfield({
    super.key,
    required this.hintText,
    this.icon,
    this.obscureText,
    this.controller,
    this.validator,
    this.suffixIcon,
  });

  final String hintText;
  final Icon? icon;
  final bool? obscureText;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    final bool isLandscape = screenSize.width > screenSize.height;

    return TextFormField(
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.right,
      controller: controller,
      obscureText: obscureText ?? false,
      validator: validator,
      decoration: InputDecoration(
        fillColor: const Color.fromARGB(255, 255, 255, 255),
        filled: true,
        suffixIcon: suffixIcon,

        hintText: hintText,

        hintStyle: isLandscape
            ? AppStyles.font12W600.copyWith(color: Colors.grey.shade400)
            : AppStyles.font14W400
                .copyWith(color: Colors.grey.shade400), // Use AppStyles.
        prefixIcon: icon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
        ),
      ),
    );
  }
}
