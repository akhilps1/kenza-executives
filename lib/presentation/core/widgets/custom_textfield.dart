import 'package:executives/domain/core/utils/extentions/extentions.dart';
import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    this.autovalidateMode,
    this.validator,
    this.onChanged,
    this.borderRadius,
    this.hintText,
    this.contentPadding,
    this.borderColor,
    this.textInputType,
    super.key,
  });

  final AutovalidateMode? autovalidateMode;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final BorderRadius? borderRadius;
  final String? hintText;
  final EdgeInsetsGeometry? contentPadding;
  final Color? borderColor;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autovalidateMode,
      validator: validator,
      onChanged: onChanged,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: context.theme.titleSmall!.copyWith(
          fontSize: 14,
        ),
        contentPadding:
            contentPadding ?? const EdgeInsets.symmetric(horizontal: 10),
        border: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(12),
          borderSide: BorderSide(
            color: borderColor ?? AppColor.primaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(12),
          borderSide: BorderSide(
            color: borderColor ?? AppColor.primaryColor,
          ),
        ),
        errorStyle: const TextStyle(
          color: Colors.red,
          fontSize: 11,
          fontFamily: 'Montserrat',
        ),
      ),
    );
  }
}
