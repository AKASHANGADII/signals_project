import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

class SpechToText extends StatefulWidget {

  const SpechToText({Key? key}) : super(key: key);

  @override
  State<SpechToText> createState() => _SpechToTextState();
}

class _SpechToTextState extends State<SpechToText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Speech to text"),),
      body: Column(
        children: [
          Container(),

        ],
      )
    );
  }
}
