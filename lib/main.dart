import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playMusic(int noteVal) {
    final player = AudioCache();
    player.play('note$noteVal.wav');
    print('audio played: note$noteVal.wav');
  }

  Expanded createColumn({int noteNum, Color color}) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: color,
            border: Border.all(
              color: color,
            ),
            borderRadius: BorderRadius.all(Radius.circular(40))),
        //color: color,
        width: double.infinity,
        child: TextButton(
          onPressed: () {
            playMusic(noteNum);
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              createColumn(noteNum: 1, color: Colors.deepPurpleAccent),
              SizedBox(
                height: 2,
              ),
              createColumn(noteNum: 2, color: Colors.indigoAccent),
              SizedBox(
                height: 2,
              ),
              createColumn(noteNum: 3, color: Colors.blueAccent),
              SizedBox(
                height: 2,
              ),
              createColumn(noteNum: 4, color: Colors.greenAccent),
              SizedBox(
                height: 2,
              ),
              createColumn(noteNum: 5, color: Colors.yellowAccent),
              SizedBox(
                height: 2,
              ),
              createColumn(noteNum: 6, color: Colors.orangeAccent),
              SizedBox(
                height: 2,
              ),
              createColumn(noteNum: 7, color: Colors.redAccent),
            ],
          ),
        ),
      ),
    );
  }
}
