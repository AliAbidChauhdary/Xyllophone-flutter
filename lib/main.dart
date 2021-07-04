import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  static AudioCache player = AudioCache();
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildkey({Color color, int soundNumber, String key}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(soundNumber);
        },
        child: Text(
          key,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Xyllophone'),
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red, soundNumber: 1, key: 'A'),
              buildkey(color: Colors.orange, soundNumber: 2, key: 'B'),
              buildkey(color: Colors.yellow, soundNumber: 3, key: 'C'),
              buildkey(color: Colors.green, soundNumber: 4, key: 'D'),
              buildkey(color: Colors.teal, soundNumber: 5, key: 'E'),
              buildkey(color: Colors.blue, soundNumber: 6, key: 'F'),
              buildkey(color: Colors.purple, soundNumber: 7, key: 'G'),
            ],
          ),
        ),
      ),
    );
  }
}
