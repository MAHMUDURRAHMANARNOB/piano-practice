import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyPianoApp());

void playSound(String note) {
  final player = AudioPlayer();
  player.play(AssetSource((note)));
}

Expanded buildPianoKey({Color color = Colors.red, String? note, String? NOTE}) {
  return Expanded(
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: color),
      child: Text(
        NOTE!,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
      onPressed: () {
        playSound(note!);
      },
    ),
  );
}

class MyPianoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildPianoKey(color: Colors.red, note: 'note1.wav', NOTE: "A"),
              buildPianoKey(color: Colors.blue, note: 'note2.wav', NOTE: "B"),
              buildPianoKey(color: Colors.green, note: 'note3.wav', NOTE: "C"),
              buildPianoKey(color: Colors.yellow, note: 'note4.wav', NOTE: "D"),
              buildPianoKey(color: Colors.purple, note: 'note5.wav', NOTE: "E"),
              buildPianoKey(color: Colors.brown, note: 'note6.wav', NOTE: "F"),
              buildPianoKey(
                  color: Colors.blueGrey, note: 'note7.wav', NOTE: "G"),
            ],
          ),
        ),
      ),
    );
  }
}
