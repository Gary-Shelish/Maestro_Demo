// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:maestrohomescreen/eric/black_keys.dart';
import 'package:maestrohomescreen/levels/BlackKeysTest.dart';

class Lesson2 extends StatelessWidget {
  const Lesson2({Key? key}) : super(key: key);
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
                    MaterialPageRoute(builder: (context) => const BlackKeys())),
                child: const Text('Black Keys')),
            ElevatedButton(
                child: const Text('Black Key Tests'),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BlackKeysTest()));
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
