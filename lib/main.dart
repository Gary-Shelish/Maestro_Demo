import 'package:flutter/material.dart';
import 'package:maestrohomescreen/lessons/lesson_card_selection.dart';
import 'package:maestrohomescreen/timer.dart';
import 'package:maestrohomescreen/songs.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TabBar _tabBar = const TabBar(tabs: [
      Tab(child: Text("Lesson", style: TextStyle(fontSize: 25.0))),
      Tab(child: Text("Practice", style: TextStyle(fontSize: 25.0))),
      Tab(child: Text("Songs", style: TextStyle(fontSize: 25.0))),
      Tab(child: Text("Timer", style: TextStyle(fontSize: 25.0))),
    ]);
    return MaterialApp(
        home: DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xff000000),
        appBar: AppBar(
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(_tabBar.preferredSize.height - 50),
            child: _tabBar,
          ),
          backgroundColor: Colors.grey.shade900,
        ),
        body: const TabBarView(children: [
          LessonCardSelection(),
          Text("Practice",
              style: TextStyle(fontSize: 25.0, color: Colors.white)),
          Songs(),
          Timer()
        ]),
      ),
    ));
  }
}
