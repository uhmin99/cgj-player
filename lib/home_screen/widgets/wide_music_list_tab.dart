import 'package:cgj_player/common/classes.dart';
import 'package:cgj_player/music_player/audio_player_screen.dart';
import "package:flutter/material.dart";
import '../../common/widgets/wide_music_item.dart';

class WideMusicListTab extends StatelessWidget {

  WideMusicListTab({super.key, required this.musicList, this.marginTop=0, this.marginBottom=0, this.addToRecent});

  final List<MusicItem> musicList;
  final double marginBottom;
  final double marginTop;
  final Function? addToRecent;

  void onTap(MusicItem musicItem, BuildContext context) {
    if(addToRecent != null){
      addToRecent!(musicItem);
    }
    Navigator.push(context, MaterialPageRoute(builder: (context)=>AudioPlayerScreen(music: musicItem,)));
  }

  @override
  Widget build(BuildContext context) {
    if(musicList.isEmpty){
      return Column(
        children: [
          SizedBox(height: marginTop),
          Text("리스트가 없습니다."),
          SizedBox(height: marginBottom),
        ],
      );

    } else {
      return Column(
        children: [
          SizedBox(height: marginTop),  //margin top

          ListView.builder(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return WideMusicItem(
                imageLink: musicList[index].imageLink,
                title: musicList[index].title,
                artist: musicList[index].artist,
                onTap:() => onTap(musicList[index], context),
              );
            },
            itemCount: musicList.length,
          ),

          SizedBox(height: marginBottom), //margin bottom
        ]
      );
    }
  }
}