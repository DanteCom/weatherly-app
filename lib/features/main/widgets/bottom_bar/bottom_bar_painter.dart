import 'package:flutter/material.dart';

class BottomBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();

    const topPadding = 10.0;

    path.moveTo(0.0, topPadding);
    path.quadraticBezierTo(
      size.width / 2,
      size.height / 2,
      size.width,
      topPadding,
    );
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    final fillPaint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xB73A3A6A), Color(0xAD25244C)],
      ).createShader(Rect.fromLTWH(0.0, 0.0, size.width, size.height));

    canvas.drawPath(path, fillPaint);

    final topBorderPath = Path();

    topBorderPath.moveTo(0.0, topPadding);
    topBorderPath.quadraticBezierTo(
      size.width / 2,
      size.height / 2,
      size.width,
      topPadding,
    );

    final borderPaint = Paint()
      ..color = const Color(0xFF7582F4)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;

    canvas.drawPath(topBorderPath, borderPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
