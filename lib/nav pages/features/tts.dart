import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';


class TextSpeech extends StatefulWidget {
  @override
  _TextSpeechState createState() => _TextSpeechState();
}

class _TextSpeechState extends State<TextSpeech> {
  FlutterTts flutterTts = FlutterTts();
  TextEditingController input = TextEditingController();

  @override
  void dispose() {
    flutterTts.stop();
    super.dispose();
  }

  Future<void> _speakText(String text) async {
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text-to-Speech App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Press the button to convert text to speech:',
              style: TextStyle(fontSize: 18),
            ),
            Container(
              child: 
              TextField(
                controller: input,
                decoration: InputDecoration(hintText: 'input text'),),
            ),
          
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _speakText(input.text);
              },
              child: Text('Speak'),
            ),
          ],
        ),
      ),
    );
  }
}
