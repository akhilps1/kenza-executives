import 'package:executives/domain/core/utils/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class TranactionShimmerWidget extends StatelessWidget {
  const TranactionShimmerWidget({
    this.height,
    super.key,
  });

  final double? height;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      shrinkWrap: true,
      itemCount: 7,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          width: 340,
          height: 70,
          padding: const EdgeInsets.all(5),
          decoration: ShapeDecoration(
            color: Colors.white.withOpacity(0.6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: Shimmer.fromColors(
            baseColor:
                const Color.fromARGB(255, 192, 192, 192).withOpacity(0.3),
            highlightColor: AppColor.scaffoldColor,
            enabled: true,
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 80,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4.5),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(7),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 120,
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
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 100,
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
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class ShimmerText extends StatelessWidget {
  const ShimmerText({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: const Color.fromARGB(255, 192, 192, 192).withOpacity(0.3),
      highlightColor: AppColor.scaffoldColor,
      enabled: true,
      child: const Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(4.5),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(8),
        ),
      ),
    );
  }
}
