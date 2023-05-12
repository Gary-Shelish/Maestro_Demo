import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maestrohomescreen/lessons_tab/lesson_card_selection.dart';
import 'package:maestrohomescreen/timer.dart';
import 'package:maestrohomescreen/songs.dart';
import 'package:maestrohomescreen/practice.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
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
      Tab(child: Text("Settings", style: TextStyle(fontSize: 25.0))),
    ]);
    return MaterialApp(
        home: DefaultTabController(
      length: 5,
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
          Practice(),
          Songs(),
          Timer(),
          Text("GRAH", style: TextStyle(fontSize: 25.0, color: Colors.white))
        ]),
      ),
    ));
  }
}
