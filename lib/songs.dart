import 'package:flutter/material.dart';
import 'package:maestrohomescreen/levels/C_Test.dart';

class Songs extends StatelessWidget {
  const Songs({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Test your knowledge'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const CTest()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.grey,
                textStyle: const TextStyle(fontSize: 30),
              ),
            )
          ],
        ),
      ),
    );
  }
}
