import 'package:flutter/material.dart';

class Shape extends StatelessWidget {
  const Shape({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/piolin_1.png',
      width: 360,
      height: 200,
    );
  }
}