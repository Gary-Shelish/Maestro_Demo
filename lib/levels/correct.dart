import 'package:flutter/material.dart';

class Correct extends StatefulWidget {
  const Correct(this.nextPage, {Key? key}) : super(key: key);

  final Widget nextPage;
  @override
  _CorrectState createState() => _CorrectState();
}

class _CorrectState extends State<Correct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Spacer(),
          const Text('Correct', style: TextStyle(fontSize: 50)),
          const Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 2,
              ),
              ElevatedButton(
                  child: const Text(
                    'Continue',
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => widget.nextPage));
                  }),
              const Spacer(flex: 2),
            ],
          )
        ]),
      ),
    );
  }
}
