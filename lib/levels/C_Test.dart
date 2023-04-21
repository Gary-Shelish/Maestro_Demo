// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:maestrohomescreen/levels/D_Test.dart';
import 'package:maestrohomescreen/levels/correct.dart';
import 'package:maestrohomescreen/levels/incorrect.dart';
import 'dart:math';

Random random = Random();
int randomNumber = random.nextInt(2);
var intValue = Random().nextInt(2);

class CTest extends StatefulWidget {
  const CTest({Key? key}) : super(key: key);
  @override
  _CTestState createState() => _CTestState();
}

class _CTestState extends State<CTest> {
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
                  (intValue == 0)
                      ? ElevatedButton(
                          child: const Text('C'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Correct(DTest())));
                          })
                      : (intValue == 1)
                          ? ElevatedButton(
                              child: const Text('D'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorrect(CTest())));
                              })
                          : ElevatedButton(
                              child: const Text('E'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorrect(CTest())));
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
                                        const Incorrect(CTest())));
                          })
                      : (intValue == 1)
                          ? ElevatedButton(
                              child: const Text('C'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Correct(DTest())));
                              })
                          : ElevatedButton(
                              child: const Text('D'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorrect(CTest())));
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
                                        const Incorrect(CTest())));
                          })
                      : (intValue == 1)
                          ? ElevatedButton(
                              child: const Text('E'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorrect(CTest())));
                              })
                          : ElevatedButton(
                              child: const Text('C'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Correct(DTest())));
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
