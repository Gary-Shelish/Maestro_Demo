import 'package:flutter/material.dart';
import 'package:maestrohomescreen/eric/black_keys.dart';
import 'package:maestrohomescreen/eric/white_keys.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const BlackKeys())),
                child: const Text('Black Keys')),
            TextButton(onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const WhiteKeys())),
              child: const Text('White Keys'),
            ),
          ],
        ),
      ),
    );
  }
}
