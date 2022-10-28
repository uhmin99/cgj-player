import 'package:flutter/material.dart';
import '../common/classes.dart';
import './widgets/home_screen_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<MusicItem> musicList = [MusicItem(1, "title", "artist", AudioLink(AudioLinkType.url, "testaudio"), "https://picsum.photos/id/237/200/300")];
  List<MusicItem> recentPlayList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchAndProfile(),

            TabTitle(title: "PlayList"),
            PlayListTab(),

            TabTitle(title: "Recent Play"),
            RecentPlayTab(recentPlayList: recentPlayList,),

            TabTitle(title: "List"),
            WideMusicListTab(musicList: musicList, marginTop: 20),
          ],
        )
      ),
      // backgroundColor: Color(0x003c3d49),
    );
  }
}