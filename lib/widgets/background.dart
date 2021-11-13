import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final boxDecoration = BoxDecoration(
      gradient: LinearGradient(
          colors: [Color(0xff2E305F), Color(0xff202333)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8]));

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            //Purple Gradient
            decoration: boxDecoration),

        //Pink Box
        _PinkBox(),
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 3.0,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(251, 142, 172, 1)
            ]),
            borderRadius: BorderRadius.circular(80)),
      ),
    );
  }
}
