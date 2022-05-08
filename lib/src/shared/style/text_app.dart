import 'package:ecommerce_app/src/shared/style/color_app.dart';
import 'package:flutter/cupertino.dart';

class TextApp {
  static const String fontFamilyDefault = 'SFProDisplay';

  static TextStyle title = const TextStyle(
    fontSize: 20,
    fontFamily: fontFamilyDefault,
  );

  static TextStyle subtitle = const TextStyle(
    fontSize: 16,
    fontFamily: fontFamilyDefault,
  );

  static TextStyle titleOnboarding = const TextStyle(
    fontSize: 45,
    fontWeight: FontWeight.w900,
    color: AppColor.maximumYellow,
  );
}