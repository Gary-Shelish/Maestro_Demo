import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            SizedBox(
              height: 100,
              width: 100,
              child: Card(child: Text('Hello World!')),
            ),
            SizedBox(
              height: 2,
              child: Center(child: Text('Sheet Music Reading')),
            ),
          ],
        ),
      ),
    );
  }
}
