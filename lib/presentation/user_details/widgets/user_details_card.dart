import 'package:executives/application/core/constants.dart';
import 'package:executives/domain/core/utils/extentions/extentions.dart';
import 'package:executives/domain/core/utils/media_res/media_res.dart';
import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:executives/domain/users/models/user_details.dart';
import 'package:executives/presentation/core/widgets/custom_catched_network_image.dart';
import 'package:executives/presentation/users/widgets/user_details_widget.dart';
import 'package:flutter/material.dart';

class UserDetailsCard extends StatelessWidget {
  const UserDetailsCard({
    super.key,
    required this.userDetails,
    required this.onClicked,
  });
  final UserDetails userDetails;
  final VoidCallback onClicked;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      width: 340,
      height: 232,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 150,
                height: 140,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: userDetails.imgUrl.isNotEmpty
                      ? CustomCachedNetworkImage(url: userDetails.imgUrl)
                      : ColoredBox(
                          color: AppColor.primaryColor,
                          child: Image.asset(
                            MediaRes.logo,
                          ),
                        ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Opacity(
                      opacity: 0.80,
                      child: Text(
                        userDetails.name,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Opacity(
                      opacity: 0.80,
                      child: Text(
                        userDetails.refferalCode,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  UserSubDetailsWidget(
                    image: MediaRes.call,
                    text: userDetails.phoneNo,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  UserSubDetailsWidget(
                    image: MediaRes.mapPin,
                    text:
                        '${userDetails.address.capitalize},\n${userDetails.ladmark.capitalize},\n${userDetails.state.capitalize},${userDetails.pincode}',
                  )
                ],
              )
            ],
          ),
          kSizedBoxH10,
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onClicked,
              child: const Text(
                'Receive Money',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
