import 'package:flutter/material.dart';

class LevelCard extends StatelessWidget {
  const LevelCard({Key? key, this.title = ''}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff000000),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Caveat',
              fontSize: 26.0,
              color: Color(0xffffffff),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
