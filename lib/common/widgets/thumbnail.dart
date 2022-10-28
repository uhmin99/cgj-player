import "package:cgj_player/common/classes.dart";
import "package:flutter/material.dart";

class Thumbnail extends StatelessWidget {
  Thumbnail({super.key, required this.imageLink, required this.width, required this.height, required this.borderRadius, this.fitMethod=BoxFit.contain,});

  final ImageLink imageLink;
  final double width;
  final double height;
  final double borderRadius;
  final BoxFit fitMethod;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      child: 
        (imageLink.type == LinkType.url)
        ?
          Image.network(
            imageLink.link,
            width: width,
            height: height,
            fit: fitMethod,
          )
        :
          Image.asset(
            imageLink.link,
            width: width,
            height: height,
            fit: fitMethod,
          )
        ,
    );
  }
}