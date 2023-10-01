import 'package:flutter/material.dart';

class PlaceholdedNetworkImage extends StatelessWidget {
  const PlaceholdedNetworkImage({
    this.url,
    this.width = 56,
    this.height = 56,
    this.radius = 12,
    this.onTap,
    super.key,
  });

  final String? url;
  final double width;
  final double height;
  final double radius;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    if (url == null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          width: width,
          height: height,
          color: Colors.grey,
        ),
      );
    }

    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Image.network(
          url!,
          width: width,
          height: height,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
