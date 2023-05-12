// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:maestrohomescreen/Practice_Templates/Note_Recognition.dart';
import 'package:maestrohomescreen/Practice_Templates/Piano.dart';

class Practice extends StatelessWidget {
  const Practice({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Row(
          children: [
            Container(
              color: const Color(0xff2c2c2c),
              height: 350,
              width: 320,
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                    'Welcome to the IDIS Practice Creation tab. After you complete a lesson or chapter, you are meant to come here and create your own practice regimens for any given topic. There will be a few preset practice regimens for you to look through, use, and take inspiration from when creating your own regimens. The reason you will be creating your own regimens is because it will help you conscientiously understand what you are practicing, and what you need to do to practice it. The goal is to help you be more mindful of your learning and practicing so that you can improve more efficiently.',
                    style: TextStyle(color: Colors.white)),
              ),
            ),
            SafeArea(
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                ElevatedButton(
                    child: const Text('Note Recognition'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => NoteRecogniton()));
                    }),
                ElevatedButton(
                    child: const Text('Piano'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Piano2()));
                    }),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
