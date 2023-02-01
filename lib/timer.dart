import 'package:flutter/material.dart';

class Timer extends StatelessWidget {
  const Timer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          width: 150,
          color: Color(0xff2c2c2c),
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text('Hello', style: TextStyle(color: Colors.white)),
                Text('Goodbye', style: TextStyle(color: Colors.white)),
                Text('Sleepy Time', style: TextStyle(color: Colors.white)),
                Text('Hello', style: TextStyle(color: Colors.white)),
                Text('Goodbye', style: TextStyle(color: Colors.white)),
                Text('Sleepy Time', style: TextStyle(color: Colors.white)),
                Text('Hello', style: TextStyle(color: Colors.white)),
                Text('Goodbye', style: TextStyle(color: Colors.white)),
                Text('Sleepy Time', style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
