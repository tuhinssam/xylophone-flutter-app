import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playMusic(int noteVal) {
    final player = AudioCache();
    player.play('note$noteVal.wav');
    print('audio played: note$noteVal.wav');
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
              Expanded(
                child: Container(
                  color: Colors.deepPurpleAccent,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      playMusic(1);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.indigo,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      playMusic(2);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      playMusic(3);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.greenAccent,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      playMusic(4);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.yellowAccent,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      playMusic(5);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.orange,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      playMusic(6);
                    },
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.redAccent,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      playMusic(7);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
