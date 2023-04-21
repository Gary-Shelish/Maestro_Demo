import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyDuration extends ChangeNotifier {
  Duration duration;

  MyDuration(this.duration);

  void updateDuration(Duration newDuration) {
    duration = newDuration;
    notifyListeners();
  }
}

class VideoPlayerUtils extends ChangeNotifier {
  String location;

  VideoPlayerUtils({this.location = 'videos/MaestroVideo1(2).mp4'});

  void updateLocation(String newLocation) {
    location = newLocation;
    notifyListeners();
  }
}

final durationProvider = ChangeNotifierProvider<MyDuration>(
    ((ref) => MyDuration(const Duration(minutes: 15))));

final videoPlayerProvider =
    ChangeNotifierProvider<VideoPlayerUtils>((ref) => VideoPlayerUtils());
