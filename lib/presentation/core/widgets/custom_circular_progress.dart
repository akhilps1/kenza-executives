import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomCircularProgress extends StatelessWidget {
  const CustomCircularProgress({
    super.key,
    this.color,
  });
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 25,
      child: CircularProgressIndicator(
        color: color ?? AppColor.bgWhiteColor,
        strokeWidth: 1.5,
      ),
    );
  }
}
