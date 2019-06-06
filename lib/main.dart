import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded _displayNotes(MaterialColor colors, int num) {
    return Expanded(
      child: FlatButton(
        color: colors,
        onPressed: () => _playSound(num),
        child: null,
      ),
      flex: 1,
    );
  }

  _playSound(int selectedSound) {
    final player = AudioCache();
    player.play('note$selectedSound.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              _displayNotes(Colors.red, 1),
              _displayNotes(Colors.orange, 2),
              _displayNotes(Colors.yellow, 3),
              _displayNotes(Colors.green, 4),
              _displayNotes(Colors.lightGreen, 5),
              _displayNotes(Colors.blue, 6),
              _displayNotes(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
