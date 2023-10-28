import 'package:flutter/material.dart';

class CustomSnakbar {
  static show(
      {required BuildContext context,
      required String message,
      Color? backgroundColor,
      Color? textColor}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        showCloseIcon: true,
        content: Text(
          message,
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontSize: 14,
            fontFamily: 'poppins',
            fontWeight: FontWeight.w500,
          ),
        ),
        backgroundColor: backgroundColor ?? const Color(0xFFFF0000),
      ),
    );
  }
}
