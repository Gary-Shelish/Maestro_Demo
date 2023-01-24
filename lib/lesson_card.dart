import 'package:flutter/material.dart';

class LessonCard extends StatelessWidget {
  const LessonCard({Key? key, this.title = '', this.image = ''})
      : super(key: key);

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xff000000),
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              color: Colors.black,
              child: Image.asset(image, height: 160, fit: BoxFit.cover)),
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Caveat',
              fontSize: 25.0,
              color: Color(0xffffffff),
              fontWeight: FontWeight.bold,
            ),
          ),
          //Image.asset(image, height: 110, fit: BoxFit.fill),
        ],
      ),
    );
  }
}
