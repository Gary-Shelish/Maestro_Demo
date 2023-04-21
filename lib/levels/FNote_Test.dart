// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:maestrohomescreen/levels/GNote_Test.dart';
import 'package:maestrohomescreen/levels/correct.dart';
import 'package:maestrohomescreen/levels/incorrect.dart';
import 'dart:math';

Random random = Random();
int randomNumber = random.nextInt(3);
var intValue = Random().nextInt(3);

class FNoteTest extends StatefulWidget {
  const FNoteTest({Key? key}) : super(key: key);
  @override
  _FNoteTestState createState() => _FNoteTestState();
}

class _FNoteTestState extends State<FNoteTest> {
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
              const Text('Sheet Music Reading - F, G, A, and B'),
              const Spacer(
                flex: 3,
              ),
              const Text('What note is displayed on the sheet music?',
                  style: TextStyle(fontSize: 25)),
              const Spacer(
                flex: 1,
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/fNote.png', scale: 2),
                  ],
                )
              ]),
              const Spacer(flex: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(),
                  (intValue == 0)
                      ? ElevatedButton(
                          child: const Text('F'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Correct(GNoteTest())));
                          })
                      : (intValue == 1)
                          ? ElevatedButton(
                              child: const Text('A'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorrect(FNoteTest())));
                              })
                          : (intValue == 2)
                              ? ElevatedButton(
                                  child: const Text('B'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Incorrect(FNoteTest())));
                                  })
                              : ElevatedButton(
                                  child: const Text('G'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Incorrect(FNoteTest())));
                                  }),
                  const Spacer(
                    flex: 2,
                  ),
                  (intValue == 0)
                      ? ElevatedButton(
                          child: const Text('B'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Incorrect(FNoteTest())));
                          })
                      : (intValue == 1)
                          ? ElevatedButton(
                              child: const Text('F'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Correct(GNoteTest())));
                              })
                          : (intValue == 2)
                              ? ElevatedButton(
                                  child: const Text('G'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Incorrect(FNoteTest())));
                                  })
                              : ElevatedButton(
                                  child: const Text('A'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Incorrect(FNoteTest())));
                                  }),
                  const Spacer(
                    flex: 2,
                  ),
                  (intValue == 0)
                      ? ElevatedButton(
                          child: const Text('G'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Incorrect(FNoteTest())));
                          })
                      : (intValue == 1)
                          ? ElevatedButton(
                              child: const Text('B'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorrect(FNoteTest())));
                              })
                          : (intValue == 2)
                              ? ElevatedButton(
                                  child: const Text('A'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Incorrect(FNoteTest())));
                                  })
                              : ElevatedButton(
                                  child: const Text('F'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Correct(GNoteTest())));
                                  }),
                  const Spacer(
                    flex: 2,
                  ),
                  (intValue == 0)
                      ? ElevatedButton(
                          child: const Text('A'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Incorrect(FNoteTest())));
                          })
                      : (intValue == 1)
                          ? ElevatedButton(
                              child: const Text('G'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorrect(FNoteTest())));
                              })
                          : (intValue == 2)
                              ? ElevatedButton(
                                  child: const Text('F'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Correct(GNoteTest())));
                                  })
                              : ElevatedButton(
                                  child: const Text('B'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Incorrect(FNoteTest())));
                                  }),
                  const Spacer()
                ],
              ),
              const Spacer(),
            ]),
      ),
    );
  }
}
