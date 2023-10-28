import 'package:executives/application/core/constants.dart';
import 'package:executives/domain/core/utils/media_res/media_res.dart';
import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  int position = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        titleSpacing: 0,
        leading: position == 0
            ? IconButton(
                onPressed: () {},
                icon: const ImageIcon(
                  AssetImage(
                    MediaRes.mapPin,
                  ),
                  size: 17,
                  color: AppColor.bgWhiteColor,
                ),
              )
            : null,
        title: Text(
          pageName[position],
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          if (position == 0)
            Image.asset(
              MediaRes.logo,
              height: 40,
            ),
        ],
      ),
      body: pages[position],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: position,
        type: BottomNavigationBarType.fixed,
        fixedColor: AppColor.primaryColor,
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: const TextStyle(
          color: AppColor.primaryColor,
        ),
        onTap: (value) {
          setState(() {
            position = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: ImageIcon(
              AssetImage(
                MediaRes.geoup,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Enroll',
            icon: Stack(
              children: [
                ImageIcon(
                  AssetImage(
                    MediaRes.history,
                  ),
                ),
              ],
            ),
          ),
          BottomNavigationBarItem(
            label: 'Account',
            icon: ImageIcon(
              AssetImage(
                MediaRes.user,
              ),
            ),
          )
        ],
      ),
    );
  }
}
