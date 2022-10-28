import 'package:flutter/material.dart';
import '../common/classes.dart';
import '../common/dummy_data.dart';
import './widgets/home_screen_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  List<MusicItem> musicList = dumyJazzData;
  List<MusicItem> recentPlayList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding:EdgeInsets.only(left: 24, right: 33),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchAndProfile(),

            TabTitle(title: "PlayList"),
            PlayListTab(),

            TabTitle(title: "Recent Play"),
            WideMusicListTab(musicList: recentPlayList, marginTop: 10, marginBottom: 30,),

            TabTitle(title: "List"),
            WideMusicListTab(musicList: musicList, marginTop: 20),
          ],
        )
      ),
      // backgroundColor: Color(0x003c3d49),
    );
  }
}