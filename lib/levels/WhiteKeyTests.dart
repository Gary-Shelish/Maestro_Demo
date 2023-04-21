// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:maestrohomescreen/lessons_tab/sheet_music_reading.dart';
import 'package:maestrohomescreen/levels/CNote_Test.dart';

class WhiteKeysTest extends StatefulWidget {
  const WhiteKeysTest({Key? key}) : super(key: key);
  @override
  _WhiteKeysTestState createState() => _WhiteKeysTestState();
}

class _WhiteKeysTestState extends State<WhiteKeysTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('White Keys Tests'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Do you want to test your knowledge on white keys?'),
              ElevatedButton(
                child: const Text('Yes'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CNoteTest()));
                },
              ),
              ElevatedButton(
                child: const Text('No'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SheetMusicReading()));
                },
              )
            ]),
      ),
    );
  }
}
