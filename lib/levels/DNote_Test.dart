// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:maestrohomescreen/levels/ENote_Test.dart';
import 'package:maestrohomescreen/levels/correct.dart';
import 'package:maestrohomescreen/levels/incorrect.dart';
import 'dart:math';

Random random = Random();
int randomNumber = random.nextInt(2);
var intValue = Random().nextInt(2);

class DNoteTest extends StatefulWidget {
  const DNoteTest({Key? key}) : super(key: key);
  @override
  _DNoteTestState createState() => _DNoteTestState();
}

class _DNoteTestState extends State<DNoteTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson 1 Chapter 2 Test'),
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
              const Text('What note is displayed on the sheet music?',
                  style: TextStyle(fontSize: 25)),
              const Spacer(
                flex: 1,
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/dNote.png', scale: 1.75),
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
                          child: const Text('C'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Incorrect(DNoteTest())));
                          })
                      : (intValue == 1)
                          ? ElevatedButton(
                              child: const Text('D'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Correct(ENoteTest())));
                              })
                          : ElevatedButton(
                              child: const Text('E'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorrect(DNoteTest())));
                              }),
                  const Spacer(
                    flex: 2,
                  ),
                  (intValue == 0)
                      ? ElevatedButton(
                          child: const Text('E'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Incorrect(DNoteTest())));
                          })
                      : (intValue == 1)
                          ? ElevatedButton(
                              child: const Text('C'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorrect(DNoteTest())));
                              })
                          : ElevatedButton(
                              child: const Text('D'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Correct(ENoteTest())));
                              }),
                  const Spacer(
                    flex: 2,
                  ),
                  (intValue == 0)
                      ? ElevatedButton(
                          child: const Text('D'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Correct(ENoteTest())));
                          })
                      : (intValue == 1)
                          ? ElevatedButton(
                              child: const Text('E'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorrect(DNoteTest())));
                              })
                          : ElevatedButton(
                              child: const Text('C'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorrect(DNoteTest())));
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
