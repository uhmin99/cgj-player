import "package:flutter/material.dart";

class Thumbnail extends StatelessWidget {
  Thumbnail({super.key, required this.imgUrl, required this.width, required this.height, required this.borderRadius, this.fitMethod=BoxFit.contain,});

  final String imgUrl;
  final double width;
  final double height;
  final double borderRadius;
  final BoxFit fitMethod;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      child: Image.network(
        imgUrl,
        width: width,
        height: height,
        fit: fitMethod,
      ),
    );
  }
}