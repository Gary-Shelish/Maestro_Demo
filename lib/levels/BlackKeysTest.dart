// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:maestrohomescreen/lessons_tab/sheet_music_reading.dart';
import 'package:maestrohomescreen/levels/CSharpTest.dart';

class BlackKeysTest extends StatefulWidget {
  const BlackKeysTest({Key? key}) : super(key: key);
  @override
  _BlackKeysTestState createState() => _BlackKeysTestState();
}

class _BlackKeysTestState extends State<BlackKeysTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Black Keys Tests'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Do you want to test your knowledge on black keys?'),
              ElevatedButton(
                child: const Text('Yes'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CSharp_Test()));
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
