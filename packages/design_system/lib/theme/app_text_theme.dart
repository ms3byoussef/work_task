import 'package:design_system/app_text.dart';
import 'package:flutter/material.dart';

@immutable
class AppTextTheme {
  final AppTextStyle headline;
  final AppTextStyle headline2;
  final AppTextStyle subHead;
  final AppTextStyle subHead2;
  final AppTextStyle body;
  final AppTextStyle textfield;
  final AppTextStyle small;
  final AppTextStyle small2;
  // final AppTextStyle textFieldTextStyle;

  const AppTextTheme({
    required this.headline,
    required this.headline2,
    required this.subHead,
    required this.subHead2,
    required this.body,
    required this.textfield,
    required this.small,
    required this.small2,
    // required this.textFieldTextStyle,
  });
}
