import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    Key? key,
    required this.url,
    this.showIcon = false,
    this.boxFit,
  }) : super(key: key);

  final String url;
  final bool showIcon;
  final BoxFit? boxFit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      useOldImageOnUrlChange: true,
      imageUrl: url,
      height: double.infinity,
      width: double.infinity,
      imageBuilder: (context, imageProvider) => AspectRatio(
        aspectRatio: 3 / 2,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: boxFit ?? BoxFit.cover,
            ),
          ),
        ),
      ),
      placeholder: (context, url) => Shimmer.fromColors(
        baseColor: Colors.blue,
        highlightColor: Colors.red,
        child: Container(
          color: Colors.grey.withOpacity(0.2),
        ),
      ),
      errorWidget: (context, url, error) => Icon(
        showIcon == false ? Icons.error : Icons.person_outline,
        size: 40,
      ),
    );
  }
}