import 'package:flutter/material.dart';
import 'package:maestrohomescreen/lesson_card.dart';
import 'item.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xff000000),
        // appBar: AppBar(
        //backgroundColor: Color(0xff464646),
        //),

        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                Container(
                  height: 6,
                  child: LessonCard(
                      title: "Sheet Music Reading",
                      image: "images/Sheet Music Reading.jpg"),
                ),
                LessonCard(
                    title: "Chord Recognition",
                    image: "images/Chord Playing Image.jpg"),
                LessonCard(
                    title: "Scales and Regimens",
                    image: "images/Sheet Music Image.png"),
                LessonCard(
                    title: "Technique", image: "images/piano-technique.jpg"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
