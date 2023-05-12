import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter_piano_audio_detection/flutter_piano_audio_detection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:maestrohomescreen/levels/B_Test.dart';
import 'package:maestrohomescreen/levels/correct.dart';
import 'package:maestrohomescreen/levels/incorrect.dart';
import 'dart:math';

import 'package:piano/piano.dart';

class NoteRecogniton extends StatefulWidget {
  const NoteRecogniton({Key? key}) : super(key: key);

  @override
  _NoteRecognitionState createState() => _NoteRecognitionState();
}

class _NoteRecognitionState extends State<NoteRecogniton> {
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
    String? noteName;
    int? octave;
    String? letter;
    List<NotePosition> highlightedNotes = [];

    Note getNote(String letter) {
      switch (letter) {
        case 'C':
          return Note.C;
        case 'D':
          return Note.D;
        case 'E':
          return Note.E;
        case 'F':
          return Note.F;
        case 'G':
          return Note.G;
        case 'A':
          return Note.A;
        case 'B':
          return Note.B;
        default:
          return Note.C;
      }
    }

    if (notes.isNotEmpty) {
      noteName = notes.first;
      octave = int.tryParse(noteName.characters.last);
      letter = noteName.characters.first;
      if (octave != null) {
        highlightedNotes = [
          NotePosition(note: getNote(letter), octave: octave)
        ];
      }
    }

    return CupertinoApp(
        title: 'Piano Demo',
        home: Center(
          child: InteractivePiano(
            noteRange: NoteRange.forClefs([
              Clef.Treble,
            ]),
            highlightedNotes: highlightedNotes,
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

class dynamics {}
