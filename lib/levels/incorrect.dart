import 'package:flutter/material.dart';

class Incorrect extends StatefulWidget {
  const Incorrect(this.prevPage, {Key? key}) : super(key: key);

  final Widget prevPage;
  _IncorrectState createState() => _IncorrectState();
}

class _IncorrectState extends State<Incorrect> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Spacer(),
          const Text('Incorrect', style: TextStyle(fontSize: 50)),
          Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(
                flex: 2,
              ),
              ElevatedButton(
                  child: const Text(
                    'Try Again',
                    style: TextStyle(fontSize: 25),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => widget.prevPage));
                  }),
              Spacer(flex: 2),
            ],
          )
        ]),
      ),
    );
  }
}
