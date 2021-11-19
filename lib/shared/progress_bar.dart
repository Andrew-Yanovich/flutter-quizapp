import 'package:flutter/material.dart';

class AnimatedProgressbar extends StatelessWidget {
  final double value;
  final double height;
  const AnimatedProgressbar({Key? key, required this.value, this.height = 12})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('asd'),
    );
  }

}