import "package:flutter/material.dart";

class MusicInfoText extends StatelessWidget {
  MusicInfoText({super.key, this.title="", this.artist=""});

  final String title;
  final String artist;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25
          ),
        ),

        Text(
          artist,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15
          ),
        )
      ],
    );
  }
}
