import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main()=>runApp(
  MyApp(),
);
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    void players(int numbernote){
      final player = AudioCache();
      player.play('note${numbernote}.wav');
    }
    Widget expandedButton({Color color,int numbernote}){
      return Expanded(
        flex : 1,
        child: FlatButton(
          color: color,
          onPressed: ()  {
            players(numbernote);
          },
        ),
      );
    }
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children : <Widget>[
              expandedButton(color: Colors.red,numbernote: 1),
              expandedButton(color: Colors.yellow,numbernote: 2),
              expandedButton(color: Colors.green,numbernote: 3),
              expandedButton(color: Colors.blue,numbernote: 4),
              expandedButton(color: Colors.orange,numbernote: 5),
              expandedButton(color: Colors.indigo,numbernote: 6),
              expandedButton(color: Colors.brown,numbernote: 7),
            ],
          ),
        ),
      ),
    );
  }
}
