import 'package:flutter/material.dart';
import '../common/classes.dart';
import './widgets/home_screen_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<MusicItem> musicList = [];
  List<MusicItem> recentPlayList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchAndProfile(),
            SizedBox(height: 15),

            TabTitle(title: "PlayList"),
            PlayListTab(),
            SizedBox(height: 15),

            TabTitle(title: "Recent Play"),
            RecentPlayTab(recentPlayList: recentPlayList,),
            SizedBox(height: 25),

            TabTitle(title: "List"),
            WideMusicListTab(musicList: musicList,),
          ],
        )
      )
    );
  }
}