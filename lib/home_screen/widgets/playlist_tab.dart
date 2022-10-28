import "package:cgj_player/common/classes.dart";
import "package:cgj_player/common/widgets/thumbnail.dart";
import "package:flutter/material.dart";

class PlayListTab extends StatelessWidget {
  PlayListTab({super.key, this.marginTop=0, this.marginBottom=0});

  final double marginTop;
  final double marginBottom;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: marginTop),  //margin top

        ListView.builder(
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return _PlaylistItem();
          },
          itemCount: 1,
        ),

        SizedBox(height: marginBottom), //margin bottom
      ]
    );
  }
}

class _PlaylistItem extends StatelessWidget {
  _PlaylistItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 158,
      height: 56,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(11),color: Color(0xFF393442)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Thumbnail(imageLink: ImageLink(LinkType.url,"https://picsum.photos/seed/picsum/200/300"), width: 56, height: 56, borderRadius: 11),
          _Texts()
        ],
      ),
    );
  }
}

class _Texts extends StatelessWidget {
  _Texts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "2022 best playlist",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 13
          )
        ),
        Text(
          "By Alan",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 9
          )
        )
      ],
    );
  }
}