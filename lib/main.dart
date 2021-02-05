import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            'MOSQUITO KILLER',
            style: TextStyle(
                fontFamily: 'Dancing Script',
                color: Colors.purpleAccent.shade50,
                fontWeight: FontWeight.bold,
                fontSize: 20.0),
          ),
        ),
        backgroundColor: Colors.deepOrange.shade900,
      ),
      body:
          MosquitoPage(), // not returning the whole material app to optimize hot reload
    ),
  ));
}

class MosquitoPage extends StatefulWidget {
  @override
  _MosquitoPageState createState() => _MosquitoPageState();
}

class _MosquitoPageState extends State<MosquitoPage> {
  // final player = AudioCache();

  // void playSound() {
  //   player.play('highpitch.wav');
  //   //https://freesound.org/people/sandufi/sounds/350855/
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: FlatButton(
                onPressed: () {
                  // player.play('sound/highpitch.wav');
                  //  audioplayers package has too many bus, use assets_audio_player
                },
                child: Image.asset('images/mosquito killer.jpg'),
              ),
            ),
            Text(
              'Tap on the mosquito to kill it',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
