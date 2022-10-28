import "package:cgj_player/common/classes.dart";
import "package:cgj_player/common/widgets/thumbnail.dart";
import "package:flutter/material.dart";

class WideMusicItem extends StatelessWidget {
  WideMusicItem({super.key, required this.imageLink, this.title="", this.artist="", this.onTap});
  
  final ImageLink imageLink;
  final String title;
  final String artist;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child:Row(
        children: [
          Thumbnail(imageLink: imageLink, width: 47, height:47, borderRadius: 8, fitMethod: BoxFit.cover),
          _Texts(title: title, artist: artist),
          Spacer(),
          _SettingButton(),
        ],
      )
    );
  }
}


class _Texts extends StatelessWidget {
  _Texts({super.key, required this.title, required this.artist});

  final String title;
  final String artist;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              // color: Colors.white
            ),
          ),
          Text(
            artist,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15,
              // color: Color(0x52F9F9FA)
            ),
          ),
        ],
      )
    );
  }
}

class _SettingButton extends StatelessWidget {
  _SettingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Icon(Icons.more_horiz);
  }
}