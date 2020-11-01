import 'package:flutter/material.dart';

class GOLPainter extends CustomPainter {
  final List grid;

  GOLPainter(this.grid);

  final width = 600;
  final height = 600;
  final cols = 10;
  final rows = 10;
  double resolution = 5;

  @override
  void paint(Object canvas, Size size) {
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        canvas.drawRect(Offset(0, 0) & Size(resolution, resolution), Paint());
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
