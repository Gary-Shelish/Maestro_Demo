// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:maestrohomescreen/levels/D_Test.dart';
import 'package:maestrohomescreen/levels/correct.dart';

// ignore: camel_case_types
class KeyOfC_Chords extends StatefulWidget {
  const KeyOfC_Chords({Key? key}) : super(key: key);
  @override
  _KeyOfC_ChordsState createState() => _KeyOfC_ChordsState();
}

// ignore: camel_case_types
class _KeyOfC_ChordsState extends State<KeyOfC_Chords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson 1 Chapter 1 Test'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Sheet Music Reading - C, D, and E'),
              const Spacer(
                flex: 3,
              ),
              const Text('What note is displayed on the keyboard?',
                  style: TextStyle(fontSize: 25)),
              const Spacer(
                flex: 1,
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/ckey.png', scale: 1),
                  ],
                )
              ]),
              const Spacer(flex: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  ElevatedButton(
                      child: const Text('C'),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Correct(DTest())));
                      }),
                  const Spacer(
                    flex: 2,
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                  const Spacer()
                ],
              ),
              const Spacer(),
            ]),
      ),
    );
  }
}
