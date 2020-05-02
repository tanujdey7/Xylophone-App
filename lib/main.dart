// import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final player = AudioCache();
    Expanded buildKey(Color color, int note) {
      return Expanded(
        child: FlatButton(
          color: color,
          onPressed: () {
            player.play('note$note.wav');
          },
        ),
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.red, 1),
              buildKey(Colors.orange, 2),
              buildKey(Colors.yellow, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.blueGrey, 5),
              buildKey(Colors.blue, 6),
              buildKey(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
