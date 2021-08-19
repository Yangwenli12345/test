import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';

class Customdet extends StatefulWidget {
  final list;
  const Customdet({Key? key, this.list}) : super(key: key);

  @override
  _CustomdetState createState() => _CustomdetState();
}

class _CustomdetState extends State<Customdet> {
  FlutterTts flutterTts = FlutterTts();

  speak(text) async {
    await flutterTts.setLanguage("en-UK");
    await flutterTts.setSpeechRate(0.3);
    await flutterTts.setPitch(0.9);
    await flutterTts.speak(text);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        child: Column(
          children: [
            ListTile(
              trailing: InkWell(
                  onTap: () {
                    speak("${widget.list["en"]}");
                  },
                  child: Icon(Icons.record_voice_over_outlined)),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  "${widget.list["en"]}",
                  style: TextStyle(fontSize: 16, color: Colors.red[400]),
                ),
              ),
              subtitle: Text(
                "${widget.list["som"]}",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
