import 'package:flutter/material.dart';

class LessonCard extends StatelessWidget {
  const LessonCard(
      {Key? key, this.title = '', this.image = '', required this.next})
      : super(key: key);

  final String title;
  final String image;
  final Widget next;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xff000000),
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.black,
              child: IconButton(
                iconSize: 150,
                icon: Image.asset(image, height: 160, fit: BoxFit.cover),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => next,
                    )),
              ),
            ),
          ),

          Text(
            title,
            style: const TextStyle(
              fontFamily: 'Caveat',
              fontSize: 26.0,
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
