import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text("Music List"),),
          body: MyHomePage(),
        )
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final assetsAudioPlayer = AssetsAudioPlayer();
  bool _play = false;


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Text("Track 1"),
          trailing: IconButton(icon:  _play ? Icon(Icons.pause) : Icon(Icons.play_arrow),
            onPressed: (){

              assetsAudioPlayer.open(Audio("assets/sounds/track1.mp3"));
              // if(assetsAudioPlayer.isPlaying.value){
              //   assetsAudioPlayer.pause();
              // }else{
              //   assetsAudioPlayer.play();
              // }
              setState(() {
                _play = !_play;
              });
            },
          ),
        ),
        ListTile(
          leading: Text("Track 2"),
          trailing: IconButton(icon:  _play ? Icon(Icons.pause) :Icon(Icons.play_arrow),
            onPressed: (){

              assetsAudioPlayer.open(Audio("assets/sounds/track2.mp3"));
              if(assetsAudioPlayer.isPlaying.value){
                assetsAudioPlayer.pause();
              }else{
                assetsAudioPlayer.play();
              }
              setState(() {
                _play = !_play;
              });
            },
          ),
        ),
        ListTile(
          leading: Text("Track 3"),
          trailing: IconButton(icon:  _play ? Icon(Icons.pause) :Icon(Icons.play_arrow),
            onPressed: (){

              assetsAudioPlayer.open(Audio("assets/sounds/track3.mp3"));
              if(assetsAudioPlayer.isPlaying.value){
                assetsAudioPlayer.pause();
              }else{
                assetsAudioPlayer.play();
              }
              setState(() {
                _play = !_play;
              });
            },
          ),
        ),
        ListTile(
          leading: Text("Track 4"),
          trailing: IconButton(icon:  _play ? Icon(Icons.pause) :Icon(Icons.play_arrow),
            onPressed: (){

              assetsAudioPlayer.open(Audio("assets/sounds/track4.mp3"));
              if(assetsAudioPlayer.isPlaying.value){
                assetsAudioPlayer.pause();
              }else{
                assetsAudioPlayer.play();
              }
              setState(() {
                _play = !_play;
              });
            },
          ),
        ),
        ListTile(
          leading: Text("Track 5"),
          trailing: IconButton(icon:  _play ? Icon(Icons.pause) :Icon(Icons.play_arrow),
            onPressed: (){

              assetsAudioPlayer.open(Audio("assets/sounds/track5.mp3"));
              if(assetsAudioPlayer.isPlaying.value){
                assetsAudioPlayer.pause();
              }else{
                assetsAudioPlayer.play();
              }
              setState(() {
                _play = !_play;
              });
            },
          ),
        ),
        ListTile(
          leading: Text("Track 6"),
          trailing: IconButton(icon:  _play ? Icon(Icons.pause) :Icon(Icons.play_arrow),
            onPressed: (){

              assetsAudioPlayer.open(Audio("assets/sounds/track6.mp3"));
              if(assetsAudioPlayer.isPlaying.value){
                assetsAudioPlayer.pause();
              }else{
                assetsAudioPlayer.play();
              }
              setState(() {
                _play = !_play;
              });
            },
          ),
        ),
      ],
    );
  }
}



