// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:maestrohomescreen/levels/demo_final.dart';
import 'package:maestrohomescreen/levels/congradulations2.dart';
import 'package:maestrohomescreen/levels/congradulations3.dart';
import 'package:maestrohomescreen/levels/correct.dart';
import 'package:maestrohomescreen/levels/incorrect.dart';
import 'dart:math';

Random random = Random();
int randomNumber = random.nextInt(3);
var intValue = Random().nextInt(3);

class BNoteTest extends StatefulWidget {
  const BNoteTest({Key? key}) : super(key: key);
  @override
  _BNoteTestState createState() => _BNoteTestState();
}

class _BNoteTestState extends State<BNoteTest> {
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
                    Image.asset('assets/bNote.png', scale: 4),
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
                                        const Incorrect(BNoteTest())));
                          })
                      : (intValue == 1)
                          ? ElevatedButton(
                              child: const Text('A'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorrect(BNoteTest())));
                              })
                          : (intValue == 2)
                              ? ElevatedButton(
                                  child: const Text('B'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Correct(DemoFinal())));
                                  })
                              : ElevatedButton(
                                  child: const Text('G'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Incorrect(BNoteTest())));
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
                                        const Correct(DemoFinal())));
                          })
                      : (intValue == 1)
                          ? ElevatedButton(
                              child: const Text('F'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorrect(BNoteTest())));
                              })
                          : (intValue == 2)
                              ? ElevatedButton(
                                  child: const Text('G'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Incorrect(BNoteTest())));
                                  })
                              : ElevatedButton(
                                  child: const Text('A'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Incorrect(BNoteTest())));
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
                                        const Incorrect(BNoteTest())));
                          })
                      : (intValue == 1)
                          ? ElevatedButton(
                              child: const Text('B'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Correct(DemoFinal())));
                              })
                          : (intValue == 2)
                              ? ElevatedButton(
                                  child: const Text('A'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Incorrect(BNoteTest())));
                                  })
                              : ElevatedButton(
                                  child: const Text('F'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Incorrect(BNoteTest())));
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
                                        const Incorrect(BNoteTest())));
                          })
                      : (intValue == 1)
                          ? ElevatedButton(
                              child: const Text('G'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorrect(BNoteTest())));
                              })
                          : (intValue == 2)
                              ? ElevatedButton(
                                  child: const Text('F'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Incorrect(BNoteTest())));
                                  })
                              : ElevatedButton(
                                  child: const Text('B'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Correct(DemoFinal())));
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
