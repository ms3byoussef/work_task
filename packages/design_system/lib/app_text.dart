import 'dart:ui' as ui;

import 'package:design_system/extentions/size_utils.dart';
import 'package:design_system/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final AppTextStyle style;
  final TextAlign textAlign;

  static const String font = 'packages/design_system/Montserrat';

  AppText.headline(
    this.text, {
    super.key,
    this.textAlign = TextAlign.start,
  }) : style = AppTextStyle.headlineTextStyle;

  AppText.subHead(
    this.text, {
    super.key,
    this.textAlign = TextAlign.start,
  }) : style = AppTextStyle.subHeadTextStyle;

  AppText.subHead2(
    this.text, {
    super.key,
    this.textAlign = TextAlign.start,
  }) : style = AppTextStyle.subHead2TextStyle;

  AppText.body(
    this.text, {
    super.key,
    this.textAlign = TextAlign.start,
  }) : style = AppTextStyle.bodyTextStyle;

  AppText.small(
    this.text, {
    super.key,
    this.textAlign = TextAlign.start,
  }) : style = AppTextStyle.smallTextStyle;

  AppText.textFieldTextStyle(
    this.text, {
    super.key,
    this.textAlign = TextAlign.start,
  }) : style = AppTextStyle.textfieldTextStyle;

  @override
  Widget build(BuildContext context) {
    var style = this.style.copyWith();

    if (style.color == null) {
      style = style.copyWith(color: context.colors.blackColor);
    }

    return Text(
      text,
      style: style.copyWith(fontFamily: font),
      textAlign: textAlign,
    );
  }
}

class AppTextStyle extends TextStyle {
  const AppTextStyle({
    double? fontSize,
    double? height,
    FontWeight? fontWeight,
    TextDecorationStyle? decorationStyle,
    TextDecoration? decoration,
    double? decorationThickness,
    TextOverflow? overflow,
    Color? color,
  }) : super(
          fontSize: fontSize,
          height: height,
          fontWeight: fontWeight,
          decorationStyle: decorationStyle,
          decoration: decoration,
          decorationThickness: decorationThickness,
          overflow: overflow,
          color: color,
        );

  static AppTextStyle headlineTextStyle = AppTextStyle(
    fontSize: 24.rSp,
    fontWeight: FontWeight.w700,
  );
  static AppTextStyle headline2TextStyle = AppTextStyle(
    fontSize: 32.rSp,
    fontWeight: FontWeight.w700,
  );
  static AppTextStyle subHeadTextStyle = AppTextStyle(
    fontSize: 18.rSp,
    fontWeight: FontWeight.w600,
  );

  static AppTextStyle subHead2TextStyle = AppTextStyle(
    fontSize: 16.rSp,
    fontWeight: FontWeight.w500,
  );

  static AppTextStyle bodyTextStyle = AppTextStyle(
    fontSize: 16.rSp,
    fontWeight: FontWeight.w500,
  );

  static AppTextStyle textfieldTextStyle = AppTextStyle(
    fontSize: 14.rSp,
    fontWeight: FontWeight.w400,
  );

  static AppTextStyle smallTextStyle = AppTextStyle(
    fontSize: 14.rSp,
    fontWeight: FontWeight.w400,
  );
  static AppTextStyle small2TextStyle = AppTextStyle(
    fontSize: 12.rSp,
    fontWeight: FontWeight.w400,
  );

  @override
  AppTextStyle copyWith({
    bool? inherit,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    ui.TextLeadingDistribution? leadingDistribution,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    List<ui.FontVariation>? fontVariations,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
    String? debugLabel,
    String? fontFamily,
    List<String>? fontFamilyFallback,
    String? package,
    TextOverflow? overflow,
  }) {
    return AppTextStyle(
      height: height ?? this.height,
      fontSize: fontSize ?? this.fontSize,
      fontWeight: fontWeight ?? this.fontWeight,
      decorationStyle: decorationStyle ?? this.decorationStyle,
      decoration: decoration ?? this.decoration,
      decorationThickness: decorationThickness ?? this.decorationThickness,
      overflow: overflow ?? this.overflow,
      color: color ?? this.color,
    );
  }
}
