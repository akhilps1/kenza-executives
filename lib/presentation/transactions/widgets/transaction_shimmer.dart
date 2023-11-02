import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TranscatinShimmer extends StatelessWidget {
  const TranscatinShimmer({
    this.height,
    super.key,
  });

  final double? height;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (BuildContext context, int index) {
        return Container(
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 5,
            ),
            height: height ?? 86,
            decoration: ShapeDecoration(
              color: AppColor.bgWhiteColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Shimmer.fromColors(
              baseColor:
                  const Color.fromARGB(255, 192, 192, 192).withOpacity(0.3),
              highlightColor: AppColor.scaffoldColor,
              enabled: true,
              child: const Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 70,
                        height: 63,
                        child: Card(
                          margin: EdgeInsets.zero,
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: SizedBox(
                          width: 140,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(4.5),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: SizedBox(
                          width: 160,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(4.5),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: SizedBox(
                          width: 70,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(4.5),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: SizedBox(
                          width: 80,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(4.5),
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(6),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ));
      },
    );
  }
}
