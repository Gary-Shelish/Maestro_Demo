// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:maestrohomescreen/levels/congradulations2.dart';
import 'package:maestrohomescreen/levels/correct.dart';
import 'package:maestrohomescreen/levels/incorrect.dart';
import 'dart:math';

Random random = Random();
int randomNumber = random.nextInt(3);
var intValue = Random().nextInt(3);

class BTest extends StatefulWidget {
  const BTest({Key? key}) : super(key: key);
  @override
  _BTestState createState() => _BTestState();
}

class _BTestState extends State<BTest> {
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
              const Text('What note is displayed on the keyboard?',
                  style: TextStyle(fontSize: 25)),
              const Spacer(
                flex: 1,
              ),
              Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/bKey.png', scale: 4),
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
                                        const Incorrect(BTest())));
                          })
                      : (intValue == 1)
                          ? ElevatedButton(
                              child: const Text('A'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorrect(BTest())));
                              })
                          : (intValue == 2)
                              ? ElevatedButton(
                                  child: const Text('B'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const Correct(
                                                Congradulations2())));
                                  })
                              : ElevatedButton(
                                  child: const Text('G'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Incorrect(BTest())));
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
                                        const Correct(Congradulations2())));
                          })
                      : (intValue == 1)
                          ? ElevatedButton(
                              child: const Text('F'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorrect(BTest())));
                              })
                          : (intValue == 2)
                              ? ElevatedButton(
                                  child: const Text('G'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Incorrect(BTest())));
                                  })
                              : ElevatedButton(
                                  child: const Text('A'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Incorrect(BTest())));
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
                                        const Incorrect(BTest())));
                          })
                      : (intValue == 1)
                          ? ElevatedButton(
                              child: const Text('B'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Correct(Congradulations2())));
                              })
                          : (intValue == 2)
                              ? ElevatedButton(
                                  child: const Text('A'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Incorrect(BTest())));
                                  })
                              : ElevatedButton(
                                  child: const Text('F'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Incorrect(BTest())));
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
                                        const Incorrect(BTest())));
                          })
                      : (intValue == 1)
                          ? ElevatedButton(
                              child: const Text('G'),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Incorrect(BTest())));
                              })
                          : (intValue == 2)
                              ? ElevatedButton(
                                  child: const Text('F'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Incorrect(BTest())));
                                  })
                              : ElevatedButton(
                                  child: const Text('B'),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => const Correct(
                                                Congradulations2())));
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
