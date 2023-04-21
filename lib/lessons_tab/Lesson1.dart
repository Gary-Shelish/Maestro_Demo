// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:maestrohomescreen/eric/white_keys.dart';
import 'package:maestrohomescreen/levels/CNote_Test.dart';

class Lesson1 extends StatelessWidget {
  const Lesson1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade900,
      ),
      backgroundColor: const Color(0xfff2f2f2),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextButton(
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const WhiteKeys())),
                child: const Text('White Keys')),
            ElevatedButton(
                child: const Text('White Key Tests'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CNoteTest()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  textStyle: const TextStyle(fontSize: 10),
                )),
          ],
        ),
      ),
    );
  }
}
