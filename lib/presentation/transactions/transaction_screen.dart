import 'package:executives/application/core/constants.dart';
import 'package:executives/domain/core/utils/extentions/extentions.dart';
import 'package:executives/domain/core/utils/media_res/media_res.dart';
import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:executives/presentation/core/widgets/custom_catched_network_image.dart';
import 'package:executives/presentation/transactions/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatefulWidget {
  const TransactionScreen({super.key});

  @override
  State<TransactionScreen> createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColor.scaffoldColor,
      child: CustomScrollView(
        slivers: [
          const SliverAppBar(
            expandedHeight: 231,
            toolbarHeight: 10,
            floating: true,
            pinned: true,
            backgroundColor: AppColor.scaffoldColor,
            surfaceTintColor: AppColor.scaffoldColor,
            flexibleSpace: FlexibleSpaceBar(
              background: AppbarWidgets(),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
              child: Opacity(
                opacity: 0.70,
                child: Text(
                  'All',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
            ),
          ),
          SliverList.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                            tag: 'profile${index}',
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: true == false
                                  ? CustomCachedNetworkImage(url: '')
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
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              'Jaydon Vetrovs',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Opacity(
                              opacity: 0.70,
                              child: Text(
                                'Note: first payment',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Opacity(
                              opacity: 0.70,
                              child: Text(
                                'July 28, 2023',
                                style: TextStyle(
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
                  const Positioned(
                    top: 15,
                    right: 20,
                    child: Opacity(
                      opacity: 0.90,
                      child: Text(
                        '\u{20B9}5000.00',
                        style: TextStyle(
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
            },
          )
        ],
      ),
    );
  }
}
