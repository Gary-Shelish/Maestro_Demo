import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_virtual_piano/flutter_virtual_piano.dart';
import 'package:piano/piano.dart';
import 'dart:async';
import 'package:flutter_piano_audio_detection/flutter_piano_audio_detection.dart';
import 'package:flutter/services.dart';
import 'package:maestrohomescreen/levels/B_Test.dart';
import 'package:maestrohomescreen/levels/correct.dart';
import 'package:maestrohomescreen/levels/incorrect.dart';
import 'dart:math';

void main() {
  runApp(Piano());
}

class Piano extends StatefulWidget {
  const Piano({Key? key}) : super(key: key);

  @override
  _PianoState createState() => _PianoState();
}

class _PianoState extends State<Piano> {
  final isRecording = ValueNotifier<bool>(false);
  FlutterPianoAudioDetection fpad = FlutterPianoAudioDetection();

  Stream<List<dynamics>>? result;
  List<String> notes = [];
  String printText = "";

  @override
  void initState() {
    super.initState();
    fpad.prepare();
  }

  void start() {
    fpad.start();
    getResult();
  }

  void stop() {
    fpad.stop();
  }

  void getResult() {
    result = fpad.startAudioRecognition() as Stream<List<dynamics>>?;
    result!.listen((event) {
      printText = "";
      setState(() {
        notes = fpad.getNotes(event);
      });
      notes.map((e) => {printText += e});
      print(notes);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class dynamics {}

class Piano2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String noteName;
    // int lenght = NoteName.length;
    return CupertinoApp(
        title: 'Piano Demo',
        home: Center(
          child: InteractivePiano(
            noteRange: NoteRange.forClefs([
              Clef.Treble,
            ]),
            highlightedNotes: [NotePosition(note: Note.D, octave: 4)],
            highlightColor: Colors.red,
            naturalColor: Colors.white,
            accidentalColor: Colors.black,
            animateHighlightedNotes: true,
            keyWidth: 60,
            onNotePositionTapped: (position) {
// Use an audio library like flutter_midi to play the sound
            },
          ),
        ));
  }
}
