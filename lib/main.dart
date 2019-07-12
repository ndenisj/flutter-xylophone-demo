import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Widget buildKey({int soundNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black54,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(soundNumber: 1, color: Colors.red),
              buildKey(soundNumber: 2, color: Colors.orange),
              buildKey(soundNumber: 3, color: Colors.green),
              buildKey(soundNumber: 4, color: Colors.pink),
              buildKey(soundNumber: 5, color: Colors.indigo),
              buildKey(soundNumber: 6, color: Colors.yellow),
              buildKey(soundNumber: 7, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
