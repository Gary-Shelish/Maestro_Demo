import 'package:flutter/material.dart';
import 'package:maestrohomescreen/levels/CNote_Test.dart';
import 'package:maestrohomescreen/levels/FNote_Test.dart';

class Congradulations3 extends StatefulWidget {
  const Congradulations3({Key? key}) : super(key: key);
  @override
  _Congradulations3State createState() => _Congradulations3State();
}

class _Congradulations3State extends State<Congradulations3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Spacer(),
          const Text('Congradulations!', style: TextStyle(fontSize: 40)),
          const Spacer(
            flex: 1,
          ),
          const Text(
            'Do you want to continue to the next test?',
            style: TextStyle(fontSize: 20),
          ),
          const Spacer(flex: 2),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 2,
              ),
              ElevatedButton(
                  child: const Text(
                    'No',
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const CNoteTest()));
                  }),
              const Spacer(
                flex: 2,
              ),
              ElevatedButton(
                  child: const Text(
                    'Yes',
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FNoteTest()));
                  }),
              const Spacer(flex: 2),
            ],
          ),
          const Spacer(),
        ]),
      ),
    );
  }
}
