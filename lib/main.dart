import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(keyColor: Colors.red, soundNumber: 1),
                buildKey(keyColor: Colors.yellow, soundNumber: 2),
                buildKey(keyColor: Colors.blue, soundNumber: 3),
                buildKey(keyColor: Colors.pink, soundNumber: 4),
                buildKey(keyColor: Colors.green, soundNumber: 5),
                buildKey(keyColor: Colors.tealAccent, soundNumber: 6),
                buildKey(keyColor: Colors.deepOrange, soundNumber: 7),
              ]),
        ),
      ),
    );
  }

  void playSound(int soundValue) {
    player.play('note$soundValue.wav');
  }

  Expanded buildKey({Color keyColor, int soundNumber}) {
    return Expanded(
      child: FlatButton(
          onPressed: () {
            playSound(soundNumber);
          },
          color: keyColor),
    );
  }
}
