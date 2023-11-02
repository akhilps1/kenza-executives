import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AccountItemWidget extends StatelessWidget {
  const AccountItemWidget({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ImageIcon(
            AssetImage(icon),
            color: AppColor.primaryColor,
            size: 23,
          ),
          const SizedBox(
            width: 15,
          ),
          Opacity(
            opacity: 0.90,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF333333),
                fontSize: 14,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
