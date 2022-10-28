import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'music_player/audio_player_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedSplashScreen(
      duration: 3000,
      nextScreen: AudioPlayerScreen(),
      splashTransition: SplashTransition.fadeTransition,
      backgroundColor: Colors.black,
      splash: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "재즈가 뭐라고 생각하세요?",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 100,
            height: 80,
            child: Lottie.asset("resource/animation/splash_animation.json"),
          )
        ],
      ),
    ));
  }
}
