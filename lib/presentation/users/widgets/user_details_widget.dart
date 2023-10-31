import 'package:executives/domain/core/utils/extentions/extentions.dart';
import 'package:executives/domain/core/utils/media_res/media_res.dart';
import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:executives/domain/users/models/user_details.dart';
import 'package:executives/presentation/core/widgets/custom_catched_network_image.dart';
import 'package:flutter/material.dart';

class UserDetailsWidget extends StatelessWidget {
  const UserDetailsWidget({
    required this.user,
    super.key,
  });

  final UserDetails user;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: 340,
      height: 86,
      padding: const EdgeInsets.all(10),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 1,
          )
        ],
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 70,
                height: 66,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Hero(
                  tag: 'profile${user.id}',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: user.imgUrl.isNotEmpty
                        ? CustomCachedNetworkImage(url: user.imgUrl)
                        : ColoredBox(
                            color: AppColor.primaryColor,
                            child: Image.asset(
                              MediaRes.logo,
                            ),
                          ),
                  ),
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Opacity(
                  opacity: 0.80,
                  child: Text(
                    user.name.toLowerCase().capitalize,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              UserSubDetailsWidget(
                text: user.ladmark.toLowerCase().capitalize,
                image: Icons.place,
              ),
              const SizedBox(
                height: 4,
              ),
              UserSubDetailsWidget(
                text: user.phoneNo,
                image: Icons.call,
              )
            ],
          ),
        ],
      ),
    );
  }
}

class UserSubDetailsWidget extends StatelessWidget {
  const UserSubDetailsWidget({
    super.key,
    required this.image,
    required this.text,
  });

  final IconData image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            image,
            size: 15,
            color: Colors.black45,
          ),
          const SizedBox(
            width: 8,
          ),
          SizedBox(
            width: context.getsize.width - 233,
            child: Opacity(
              opacity: 0.80,
              child: Text(
                text,
                softWrap: true,
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 12,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
