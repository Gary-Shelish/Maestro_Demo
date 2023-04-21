import 'package:flutter/material.dart';
import 'package:maestrohomescreen/eric/white_keys.dart';
import 'package:maestrohomescreen/lessons_tab/Lesson1.dart';
import 'package:maestrohomescreen/lessons_tab/Lesson2.dart';
import 'package:maestrohomescreen/lessons_tab/asset_player_widget.dart';
import 'package:maestrohomescreen/levels/WhiteKeyTests.dart';

class SheetMusicReading extends StatelessWidget {
  const SheetMusicReading({Key? key}) : super(key: key);
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
            Row(mainAxisAlignment: MainAxisAlignment.start, children: [
              ElevatedButton(
                  child: const Text('Lesson 1'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Lesson1()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    textStyle: const TextStyle(fontSize: 30),
                  )),
              ElevatedButton(
                  child: const Text('Lesson 2'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Lesson2()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    textStyle: const TextStyle(fontSize: 30),
                  )),
              Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                TextButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const WhiteKeys())),
                  child: const Text('White Keys'),
                ),
                ElevatedButton(
                    child: const Text('White Key Tests'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WhiteKeysTest()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      textStyle: const TextStyle(fontSize: 10),
                    )),
                ElevatedButton(
                  child: const Text('Video Player'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AssetPlayerWidget()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    textStyle: const TextStyle(fontSize: 30),
                  ),
                )
              ])
            ])
          ],
        ),
      ),
    );
  }
}
