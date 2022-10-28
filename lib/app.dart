import "package:flutter/material.dart";
import './home_screen/home_screen.dart';

class App extends StatelessWidget {
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen()
    );
  }
}