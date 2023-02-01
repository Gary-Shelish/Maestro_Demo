import 'package:flutter/material.dart';
import 'package:maestrohomescreen/lessons/lesson_card.dart';
import 'package:maestrohomescreen/lessons/sheet_music_reading.dart';

class LessonCardSelection extends StatelessWidget {
  const LessonCardSelection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 3,
          children: const [
            SizedBox(
              height: 6,
              child: LessonCard(
                title: "Sheet Music Reading",
                image: "images/Sheet Music Reading.jpg",
                next: SheetMusicReading(),
              ),
            ),
            LessonCard(
              title: "Chord Recognition",
              image: "images/Chord Playing Image.jpg",
              next: SheetMusicReading(),
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
    );
  }
}
