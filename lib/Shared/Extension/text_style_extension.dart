import 'package:flutter/material.dart';

enum TimeBoxingFontWeight { bold, regular, light }

extension TimeBoxingTextStyle on TextStyle {
  static const String headlineFontFamily = 'Roboto';
  static const String paragraphFontFamily = 'NunitoSans';

  // Headline Text Style

  static TextStyle headline1Plus(Color color) {
    return TextStyle(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      letterSpacing: -1.5,
      height: 1.25,
      fontFamily: headlineFontFamily,
      color: color,
    );
  }

  static TextStyle headline1(Color color) {
    return TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      letterSpacing: -1.5,
      height: 1.25,
      fontFamily: headlineFontFamily,
      color: color,
    );
  }

  static TextStyle headline2(Color color) {
    return TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      letterSpacing: -0.5,
      height: 1.25,
      fontFamily: headlineFontFamily,
      color: color,
    );
  }

  static TextStyle headline3(Color color) {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      letterSpacing: 0,
      height: 1.25,
      fontFamily: headlineFontFamily,
      color: color,
    );
  }

  static TextStyle headline4(Color color) {
    return TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        letterSpacing: 0,
        height: 1.25,
        fontFamily: headlineFontFamily,
        color: color);
  }

  // Paragraph Text Style

  static FontWeight _getFontWeight(TimeBoxingFontWeight fontWeight) {
    switch (fontWeight) {
      case TimeBoxingFontWeight.bold:
        return FontWeight.bold;
      case TimeBoxingFontWeight.regular:
        return FontWeight.normal;
      case TimeBoxingFontWeight.light:
        return FontWeight.w300;
    }
  }

  static TextStyle paragraph1(TimeBoxingFontWeight fontWeight, Color color) {
    return TextStyle(
      fontSize: 16,
      fontWeight: _getFontWeight(fontWeight),
      letterSpacing: 0.2,
      height: 1.25,
      fontFamily: paragraphFontFamily,
      color: color,
    );
  }

  static TextStyle paragraph2(TimeBoxingFontWeight fontWeight, Color color) {
    return TextStyle(
      fontSize: 14,
      fontWeight: _getFontWeight(fontWeight),
      height: 1.25,
      fontFamily: paragraphFontFamily,
      color: color,
    );
  }

  static TextStyle paragraph3(TimeBoxingFontWeight fontWeight, Color color) {
    return TextStyle(
      fontSize: 12,
      fontWeight: _getFontWeight(fontWeight),
      height: 1.25,
      fontFamily: paragraphFontFamily,
      color: color,
    );
  }

  static TextStyle paragraph4(TimeBoxingFontWeight fontWeight, Color color) {
    return TextStyle(
      fontSize: 10,
      fontWeight: _getFontWeight(fontWeight),
      height: 1.25,
      fontFamily: paragraphFontFamily,
      color: color,
    );
  }

  static TextStyle paragraph5(TimeBoxingFontWeight fontWeight, Color color) {
    return TextStyle(
      fontSize: 8,
      fontWeight: _getFontWeight(fontWeight),
      height: 1.25,
      fontFamily: paragraphFontFamily,
      color: color,
    );
  }
}
