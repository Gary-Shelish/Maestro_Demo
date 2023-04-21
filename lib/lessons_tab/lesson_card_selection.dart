import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maestrohomescreen/eric/white_keys.dart';
import 'package:maestrohomescreen/lessons_tab/chord_recognition.dart';
import 'package:maestrohomescreen/lessons_tab/lesson_card.dart';
import 'package:maestrohomescreen/lessons_tab/sheet_music_reading.dart';

class LessonCardSelection extends StatelessWidget {
  const LessonCardSelection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          children: [
            Container(
                height: 75,
                width: MediaQuery.of(context).size.width,
                color: const Color(0xff323232),
                child: const Text(
                    'Remember: Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah Blah',
                    style: TextStyle(
                      fontFamily: 'Caveat',
                      fontSize: 26.0,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.bold,
                    ))),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: GridView.count(
                crossAxisCount: 3,
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  SizedBox(
                    height: 6,
                    child: LessonCard(
                      title: "Sheet Music Reading",
                      image: "images/Sheet Music Reading.jpg",
                      next: WhiteKeys(),
                    ),
                  ),
                  LessonCard(
                    title: "Chord Recognition",
                    image: "images/Chord Playing Image.jpg",
                    next: ChordRecognition(),
                  ),
                  LessonCard(
                    title: "Scales and Regimens",
                    image: "images/Sheet Music Image.png",
                    next: SheetMusicReading(),
                  ),
                  LessonCard(
                    title: "Technique",
                    image: "images/piano-technique.jpg",
                    next: SheetMusicReading(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
