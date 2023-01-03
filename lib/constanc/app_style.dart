import 'package:flutter/widgets.dart';

import '../size_config';

class AppStyle {
  static TextStyle kAppHeader = TextStyle(
      fontSize: getProportionateScreenWidth(18),
      color: const Color(0xFFFFFFFF));

  static TextStyle kDrawerTitle = TextStyle(
      fontSize: getProportionateScreenWidth(14),
      color: const Color(0xFF10AB83));

  static TextStyle kDrawerSubTitle = TextStyle(
      fontSize: getProportionateScreenWidth(12),
      color: const Color(0xFF10AB83));
}
