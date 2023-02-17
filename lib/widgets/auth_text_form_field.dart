import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class AuthTextFromField extends StatelessWidget {
  final TextEditingController controller;
  final Function validator;
  final String hintText;
  final bool obscureText;
  final Function() onPressed;
  final IconData icon;
  final Color iconColor;
  final Function(String)? onChanged;

  const AuthTextFromField({
    super.key,
    required this.controller,
    required this.validator,
    required this.hintText,
    required this.obscureText,
    required this.onPressed,
    required this.icon,
    required this.iconColor,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: (value) => onChanged!(value),

      // obscureText: obscureText,
      cursorColor: AppColors.blueWhite,
      obscureText: obscureText,
      maxLines: 1,
      keyboardType: TextInputType.text,
      validator: (value) => validator(value),
      style: const TextStyle(color: Colors.black, fontSize: 16),

      decoration: InputDecoration(
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            color: Colors.blue,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            color: Colors.blue,
            width: 2.0,
          ),
        ),
        suffixIcon: IconButton(
          onPressed: onPressed,
          icon: Icon(icon, color: iconColor, size: 27),
        ),
        hintText: hintText,
      ),
    );
  }
}
