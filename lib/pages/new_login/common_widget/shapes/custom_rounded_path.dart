import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShapePainter extends CustomPainter {
  ShapePainter({
    required this.bgcolor,
    required this.shadows,
    this.blurStyle = BlurStyle.outer,
  });
  final Color bgcolor;
  final List<BoxShadow> shadows;
  final BlurStyle blurStyle;
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..style = PaintingStyle.fill
      ..color = bgcolor;

    var path = Path();
    path.lineTo(0.w, size.height - 50.h);
    path.quadraticBezierTo(
      0.w,
      size.height - 30.h,
      15.w,
      size.height - 30.h,
    );
    path.lineTo(size.width - 20.w, size.height);
    path.quadraticBezierTo(
      size.width,
      size.height,
      size.width,
      size.height - 20.h,
    );
    path.lineTo(size.width, 50.h);
    path.quadraticBezierTo(
      size.width,
      30.h,
      size.width - 15.w,
      30.h,
    );
    path.lineTo(20.w, 5.h);
    path.quadraticBezierTo(
      0.w,
      0.h,
      0.w,
      20.h,
    );
    path.close();

    for (var s in shadows) {
      var shadowPaint = Paint()
        ..color = s.color
        ..maskFilter = MaskFilter.blur(blurStyle, sqrt(s.blurRadius));
      canvas.save();
      canvas.translate(s.offset.dx, s.offset.dy);
      canvas.drawPath(path, shadowPaint);
      // canvas.drawShadow(path, s.color, sqrt(s.blurRadius), false);
      canvas.restore();
    }
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
