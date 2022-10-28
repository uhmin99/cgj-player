import "package:cgj_player/common/classes.dart";
import "package:flutter/material.dart";

class MusicImage extends StatelessWidget {
  MusicImage({super.key, required this.imageLink});

  final ImageLink imageLink;

  @override
  Widget build(BuildContext context) {
    if(imageLink.type==LinkType.asset) {
      return Image.asset(
        imageLink.link,
        width: 200,
        height: 200,
      );

    } else {
      return Image.network(
        imageLink.link,
        width: 200,
        height: 200,
      );
    }
  }
}
