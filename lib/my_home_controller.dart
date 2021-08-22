import 'dart:math';

import 'package:flutter/material.dart';

class MyHomeController {
  ValueNotifier<double> height = ValueNotifier(50);
  ValueNotifier<double> width = ValueNotifier(50);
  ValueNotifier<Color> color = ValueNotifier(Colors.blue);
  List<double> listDouble = [50, 100, 150, 200];
  List<Color> listColors = [
    Colors.amber,
    Colors.blueAccent,
    Colors.deepPurple,
    Colors.deepOrangeAccent
  ];

  final _random = new Random();

  void update() {
    height.value = listDouble[_random.nextInt(3)];
    width.value = listDouble[_random.nextInt(3)];
    color.value = listColors[_random.nextInt(3)];
  }
}
