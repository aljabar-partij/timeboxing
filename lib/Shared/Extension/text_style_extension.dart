/// TimeboxingTextStyle
/// Copyright (C) 2023 by original authors @giloeng

import 'package:flutter/material.dart';

enum TimeBoxingFontWeight { bold, regular, light }

extension TimeBoxingTextStyle on TextStyle {
  static const String headlineFontFamily = 'Roboto';
  static const String paragraphFontFamily = 'NunitoSans';

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

  // Headline Text Style

  static TextStyle headline1Plus(TimeBoxingFontWeight fontWeight, Color color) {
    return TextStyle(
      fontSize: 36,
      fontWeight: _getFontWeight(fontWeight),
      letterSpacing: -1.5,
      height: 1.25,
      fontFamily: headlineFontFamily,
      color: color,
    );
  }

  static TextStyle headline1(TimeBoxingFontWeight fontWeight, Color color) {
    return TextStyle(
      fontSize: 32,
      fontWeight: _getFontWeight(fontWeight),
      letterSpacing: -1.5,
      height: 1.25,
      fontFamily: headlineFontFamily,
      color: color,
    );
  }

  static TextStyle headline2(TimeBoxingFontWeight fontWeight, Color color) {
    return TextStyle(
      fontSize: 24,
      fontWeight: _getFontWeight(fontWeight),
      letterSpacing: -0.5,
      height: 1.25,
      fontFamily: headlineFontFamily,
      color: color,
    );
  }

  static TextStyle headline3(TimeBoxingFontWeight fontWeight, Color color) {
    return TextStyle(
      fontSize: 20,
      fontWeight: _getFontWeight(fontWeight),
      letterSpacing: 0,
      height: 1.25,
      fontFamily: headlineFontFamily,
      color: color,
    );
  }

  static TextStyle headline4(TimeBoxingFontWeight fontWeight, Color color) {
    return TextStyle(
        fontSize: 16,
        fontWeight: _getFontWeight(fontWeight),
        letterSpacing: 0,
        height: 1.25,
        fontFamily: headlineFontFamily,
        color: color);
  }

  // Paragraph Text Style

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
