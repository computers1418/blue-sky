import 'package:flutter/cupertino.dart';

import 'common_form_border.dart';

extension WidgetsExtension on Widget {
  Widget p(EdgeInsetsGeometry padding) => Padding(
        padding: padding,
        child: this,
      );

  Widget pfromLTRB({
    double l = 0,
    double r = 0,
    double t = 0,
    double b = 0,
  }) =>
      p(EdgeInsets.fromLTRB(l, t, r, b));

  Widget pSymmetric({
    double horizontal = 0,
    double vertical = 0,
  }) =>
      p(EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical));

  Widget pOnly({
    double left = 0,
    double right = 0,
    double top = 0,
    double bottom = 0,
  }) =>
      p(EdgeInsets.only(left: left, right: right, top: top, bottom: bottom));
}

extension FormExtension on Widget {
  Widget textform({double? height, double? width}) =>
      CommonFormView(height: height, width: width, child: this);
}
