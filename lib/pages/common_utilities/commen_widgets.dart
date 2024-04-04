import 'package:flutter/cupertino.dart';

class CommonWidgets {
  static Decoration imageDecoration(String assetPath) {
    return BoxDecoration(
        image: DecorationImage(fit: BoxFit.fill, image: AssetImage(assetPath)));
  }
}
