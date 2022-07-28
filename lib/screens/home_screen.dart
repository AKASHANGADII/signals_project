import 'package:flutter/material.dart';

import 'speech_to_text_screen.dart';
import 'text_to_speech_screen.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Name"),),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            OptionButton(name: "Text to speech",onPressed: (){
              Navigator.of(context).pushNamed(TextToSpech.routeName);
            }),
            OptionButton(name: "Speech to text", onPressed: (){
              Navigator.of(context).pushNamed(SpeechToTextScreen.routeName);
            })
          ],
        ),
      ),
    );
  }
}


class OptionButton extends StatelessWidget {
  String name;
  void Function()? onPressed;
  OptionButton({required this.name,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Colors.blue,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 18),
          child: Text(name),
        ),
      ),
    );
  }
}
