import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Xylophone());
}
class Xylophone extends StatelessWidget {
  const Xylophone({super.key});
    void playsound(int notenumber){
    final player= AssetsAudioPlayer();
    player.open(Audio('assets/note$notenumber.wav'),);
  }
  Container buildkey({required Color color, required int soundNumber, }){
      return Container(
      color: color,
      height: 108.4,
      child: TextButton(
        onPressed: (){
          playsound(soundNumber);
        },
        child: SizedBox(),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildkey(color: Colors.red, soundNumber:1),
              buildkey(color: Colors.blue, soundNumber:2),
              buildkey(color: Colors.yellow, soundNumber:3),
              buildkey(color: Colors.green, soundNumber:4),
              buildkey(color: Colors.purple, soundNumber:5),
              buildkey(color: Colors.orange, soundNumber:6),
              buildkey(color: Colors.pink, soundNumber:7),
              Text("Press any colour",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

