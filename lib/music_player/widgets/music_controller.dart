import 'package:cgj_player/common/classes.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

const jumpTimeInSec = 5;

class MusicController extends StatefulWidget {
  const MusicController({super.key, required this.music});

  final MusicItem music;

  @override
  State<MusicController> createState() => MusicControllerState();
}

class MusicControllerState extends State<MusicController> {

  final audioPlayer = AudioPlayer();

  @override
  void initState() {
    super.initState();

    //initialize audio player
    if(widget.music.audioLink.type == LinkType.asset){
      audioPlayer.setAsset(widget.music.audioLink.link);

    } else if(widget.music.audioLink.type == LinkType.url){
      audioPlayer.setUrl(widget.music.audioLink.link);
    }
  }

  void play() async {
    try {
      await audioPlayer.play();

    } catch (e) {
      print(e);
      print("[ERROR: error happened while playing audio player]");
    }
  }

  void pause() async {
    try {
      await audioPlayer.pause();

    } catch (e) {
      print(e);
      print("[ERROR: error happened while pausing audio player]");
    }
  }

  void stop() async {
    try {
      await audioPlayer.stop();

    } catch (e) {
      print(e);
      print("[ERROR: error happened while stoping audio player]");
    }
  }

  void jumpSeconds(int seconds) async {
    try {
      await audioPlayer.seek(Duration(seconds: seconds));

    } catch (e) {
      print(e);
      print("[ERROR: error happened while jumping seconds in audio player]");
    }
  }

  void setVolume(double volume) async {
    try {
      await audioPlayer.setVolume(volume);

    } catch (e) {
      print(e);
      print("[ERROR: error happened while setting volume in audio player]");
    }
  }

  void audioNavigate(double seconds) async {
    int second = seconds.toInt();
    int milisecond = ((seconds- second) * 1000).toInt();
    audioPlayer.seek(Duration(seconds: second, milliseconds: milisecond));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _ControllerButtons(play: play, pause: pause, jump: jumpSeconds,),
        _MusicSlider(length: audioPlayer.duration, process: audioPlayer.positionStream, audioNavigate: audioNavigate,)
      ],
    );
  }
}

class _ControllerButtons extends StatefulWidget {
  const _ControllerButtons({super.key, required this.play, required this.pause, required this.jump});

  final Function play;
  final Function pause;
  final Function jump;

  void forward() async{
    await jump(jumpTimeInSec);
  }

  void rewind() async{
    await jump(-jumpTimeInSec);
  }

  @override
  State<_ControllerButtons> createState() => _ControllerButtonsState();
}

class _ControllerButtonsState extends State<_ControllerButtons> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _RewindButton(rewind: widget.rewind,),
        SizedBox(width: 10,),
        _PlayButton(play: widget.play, pause: widget.pause,),
        SizedBox(width: 10,),
        _ForwardButton(fastFoward: widget.forward,)
      ],
    );
  }
}

class _PlayButton extends StatefulWidget {
  const _PlayButton({super.key, required this.play, required this.pause});

  final Function play;
  final Function pause;

  @override
  State<_PlayButton> createState() => _PlayButtonState();
}

class _PlayButtonState extends State<_PlayButton> {
  bool isPlaying = false;

  @override
  Widget build(BuildContext context) {
    if(isPlaying){
      return GestureDetector(
        onTap: () {
          widget.pause();
          setState(() {
            isPlaying = false;
          });
        },
        child: Icon(Icons.pause),
      );

    } else {
      return GestureDetector(
        onTap: () {
          widget.play();
          setState(() {
            isPlaying = true;
          });
        },
        child: Icon(Icons.play_arrow),
      );
    }
  }
}

class _RewindButton extends StatelessWidget {
  _RewindButton({super.key, required this.rewind});

  final Function rewind;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>rewind(),
      child: Icon(Icons.fast_rewind),
    );
  }
}

class _ForwardButton extends StatelessWidget {
  _ForwardButton({super.key, required this.fastFoward});

  final Function fastFoward;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=>fastFoward(),
      child: Icon(Icons.fast_forward),
    );
  }
}


class _MusicSlider extends StatefulWidget {
  const _MusicSlider({super.key, required this.length, required this.process, required this.audioNavigate});

  final Duration? length;
  final Stream<Duration> process;
  final Function audioNavigate;

  @override
  State<_MusicSlider> createState() => _MusicSliderState();
}

class _MusicSliderState extends State<_MusicSlider> {
  @override
  Widget build(BuildContext context) {
    print(widget.process);
    return Slider(
      value: 2,
      onChanged: (v) {
        widget.audioNavigate(v.toInt());
      },
      // max: widget.length!.inSeconds.toDouble(),
      max: 10,
      min: 0,
      activeColor: Colors.red,
      inactiveColor: Colors.white,
    );
  }
}

