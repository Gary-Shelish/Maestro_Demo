import 'package:flutter/material.dart';
import 'package:maestrohomescreen/lessons_tab/Level_Selection/smrLessons.dart';

class SheetMusicReading extends StatelessWidget {
  const SheetMusicReading({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
      ),
      backgroundColor: const Color(0xfff2f2f2),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            LevelCard(title: "Blah Blah"),
          ],
        ),
      ),
    );
  }
}
