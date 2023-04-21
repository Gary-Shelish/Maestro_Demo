import 'package:flutter/material.dart';
import 'package:maestrohomescreen/Chords/KeyOfC/KeyOfC_Chords.dart';
import 'package:maestrohomescreen/levels/C_Test.dart';

class ChordRecognition extends StatelessWidget {
  const ChordRecognition({Key? key}) : super(key: key);
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
            ElevatedButton(
              child: const Text('Key of C'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CTest()));
              },
            )
          ],
        ),
      ),
    );
  }
}
