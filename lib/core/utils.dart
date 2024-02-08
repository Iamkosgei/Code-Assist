import 'package:code_assist/core/theme/colors.dart';
import 'package:flutter/services.dart';

const accessToken = String.fromEnvironment('ACCESS_TOKEN');

extension RemoveEmptyLines on String {
  String? removeEmptyLines() {
    return replaceAll(RegExp(r'(?:[\t ]*(?:\r?\n|\r))+'), '\n');
  }
}

void setNavigationBarColor() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarColor: backgroundColor,
      systemNavigationBarIconBrightness: Brightness.light,
    ),
  );
}
