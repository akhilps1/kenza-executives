import 'package:executives/domain/core/utils/extentions/extentions.dart';
import 'package:executives/domain/core/utils/media_res/media_res.dart';
import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:executives/domain/transactions/models/transaction.dart';
import 'package:executives/presentation/core/widgets/custom_catched_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionDetailsCard extends StatelessWidget {
  const TransactionDetailsCard({
    super.key,
    required this.transaction,
  });

  final TransactionDetails transaction;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          padding: const EdgeInsets.all(10),
          width: context.getsize.width - 20,
          height: 86,
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
              Container(
                width: 70,
                height: 66,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Hero(
                  tag: 'profile${transaction.id!}',
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: transaction.userDetails.imgUrl.isNotEmpty
                        ? CustomCachedNetworkImage(
                            url: transaction.userDetails.imgUrl)
                        : ColoredBox(
                            color: AppColor.primaryColor,
                            child: Image.asset(
                              MediaRes.logo,
                            ),
                          ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    transaction.userDetails.name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Opacity(
                    opacity: 0.70,
                    child: Text(
                      "Note: ${transaction.note.isNotEmpty ? transaction.note : 'nill'}",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 11,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Opacity(
                    opacity: 0.70,
                    child: Text(
                      DateFormat.yMMMd().format(
                        transaction.timestamp.toDate(),
                      ),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 10,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          top: 15,
          right: 20,
          child: Opacity(
            opacity: 0.90,
            child: Text(
              '\u{20B9}${transaction.amount.toDouble()}',
              style: const TextStyle(
                color: Color(0xFF289C00),
                fontSize: 17,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        )
      ],
    );
  }
}
