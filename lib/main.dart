import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override

  void playsound(int soundnumber) {
    final player = AudioCache();
    player.play('note$soundnumber.wav');
  }

    Expanded buildkey({Color color,int soundnumber})
    {
      return Expanded(
        child: FlatButton(
        color: color,
          onPressed: () {
          playsound(soundnumber);
          },),);
    }


  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildkey(color : Colors.red,soundnumber:1),
                buildkey(color : Colors.green,soundnumber:2),
                buildkey(color : Colors.blue,soundnumber:3),
                buildkey(color : Colors.cyan,soundnumber:4),
                buildkey(color : Colors.purple,soundnumber:5),
                buildkey(color : Colors.pink,soundnumber:6),
                buildkey(color : Colors.amber,soundnumber:7),
              ],
            ),
        ),
      ),
    );
  }
}
