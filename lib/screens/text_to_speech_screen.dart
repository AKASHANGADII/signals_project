import 'package:flutter/material.dart';
import 'package:text_to_speech/text_to_speech.dart';

class TextToSpech extends StatefulWidget {
  static const routeName='/text-to-speech-screen';
  TextToSpeech tts = TextToSpeech();
  //String text='';
  final textController=TextEditingController();

  @override
  State<TextToSpech> createState() => _TextToSpechState();
}

class _TextToSpechState extends State<TextToSpech> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Text to speech"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: TextFormField(
                controller: widget.textController,
                decoration: InputDecoration(
                  label: Text("Enter your text here"),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  )
                ),
                maxLines: 50,
              ),
            ),
            Expanded(
              flex: 1,
              child: GestureDetector(
                onTap: (){
                  widget.tts.speak(widget.textController.text);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,

                  child: Center(child: Icon(Icons.volume_up_sharp)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
