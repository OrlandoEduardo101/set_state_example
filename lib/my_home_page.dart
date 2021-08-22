import 'dart:math';

import 'package:flutter/material.dart';
import 'package:set_state_example/my_home_controller.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _height = 50;
  double _width = 50;
  Color _color = Colors.blue;
  final _random = new Random();
  List<double> listDouble = [50, 100, 150, 200];

  List<Color> listColors = [
    Colors.amber,
    Colors.blueAccent,
    Colors.deepPurple,
    Colors.deepOrangeAccent
  ];

  void _update() {
    setState(() {
      _height = listDouble[_random.nextInt(3)];
      _width = listDouble[_random.nextInt(3)];
      _color = listColors[_random.nextInt(3)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: AnimatedContainer(
              duration: Duration(milliseconds: 500),
          height: _height,
          width: _width,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: BorderRadius.circular(12)
          ),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: _update,
          tooltip: 'Action',
          child: Icon(Icons.update),
        ));
  }
}

// class _MyHomePageState extends State<MyHomePage> {
//   MyHomeController controller = MyHomeController();
//   @override
//   Widget build(BuildContext context) {
//     print("Build");
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(widget.title),
//         ),
//         body: ValueListenableBuilder(
//             valueListenable: controller.height,
//             builder: (context, hasError, child) {
//               print("ValueListenableBuilder");
//               return Center(
//                   child: AnimatedContainer(
//                 duration: Duration(milliseconds: 500),
//                 height: controller.height.value,
//                 width: controller.width.value,
//                 decoration: BoxDecoration(
//                     color: controller.color.value,
//                     borderRadius: BorderRadius.circular(12)),
//               ));
//             }),
//         floatingActionButton: Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             FloatingActionButton(
//               onPressed: controller.update,
//               tooltip: 'Action',
//               child: Icon(Icons.update),
//             ),
//             FloatingActionButton(
//               onPressed: () {
//                 setState(() {});
//               },
//               tooltip: 'Action',
//               child: Icon(Icons.update),
//             ),
//           ],
//         ));
//   }
// }
