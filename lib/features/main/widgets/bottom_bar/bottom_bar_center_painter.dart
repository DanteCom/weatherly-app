import 'package:flutter/material.dart';

class BottomBarCenterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, size) {
    final path = Path();

    const curveHeight = 50.0;

    final left = size.width * 0.2;
    final right = size.width * 0.8;

    path.moveTo(0, size.height);

    path.quadraticBezierTo(left, size.height, left, curveHeight);

    path.quadraticBezierTo(left, 0, size.width * 0.4, 0);

    path.lineTo(size.width * 0.6, 0);

    path.quadraticBezierTo(right, 0, right, curveHeight);

    path.quadraticBezierTo(
      size.width - left,
      size.height,
      size.width,
      size.height,
    );

    final fillPaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xFF3D406F), Color(0xFF262C4D)],
      ).createShader(Rect.fromLTWH(0.0, 0.0, size.width, size.height));

    canvas.drawPath(path, fillPaint);

    final borderPaint = Paint()
      ..color = const Color(0xFF7582F4)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    canvas.drawPath(path, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
