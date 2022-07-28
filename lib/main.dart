import 'package:flutter/material.dart';
import 'package:signals_project/screens/home_screen.dart';
import 'package:signals_project/screens/speech_to_text_screen.dart';
import 'package:signals_project/screens/text_to_speech_screen.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/':(ctx)=>HomeScreen(),
        TextToSpech.routeName:(ctx)=>TextToSpech(),
        SpeechToTextScreen.routeName:(ctx)=>SpeechToTextScreen()
      },
      initialRoute: '/',
    );
  }
}
