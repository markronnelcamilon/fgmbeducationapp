// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences _prefs;

abstract class FlutterFlowTheme {
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static ThemeMode get themeMode {
    final darkMode = _prefs?.getBool(kThemeModeKey);
    return darkMode == null
        ? ThemeMode.system
        : darkMode
            ? ThemeMode.dark
            : ThemeMode.light;
  }

  static void saveThemeMode(ThemeMode mode) => mode == ThemeMode.system
      ? _prefs?.remove(kThemeModeKey)
      : _prefs?.setBool(kThemeModeKey, mode == ThemeMode.dark);

  static FlutterFlowTheme of(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark
          ? DarkModeTheme()
          : LightModeTheme();

  Color primaryColor;
  Color secondaryColor;
  Color tertiaryColor;
  Color alternate;
  Color primaryBackground;
  Color secondaryBackground;
  Color primaryText;
  Color secondaryText;

  Color background;
  Color darkBackground;
  Color textColor;
  Color grayDark;
  Color grayLight;
  Color errorRed;
  Color btnText;
  Color lineColor;
  Color customColor3;
  Color customColor4;
  Color white;

  TextStyle get title1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: textColor,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      );
  TextStyle get title2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: primaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 28,
      );
  TextStyle get title3 => GoogleFonts.getFont(
        'Lexend Deca',
        color: primaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: grayLight,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: grayLight,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: grayLight,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: textColor,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}

class LightModeTheme extends FlutterFlowTheme {
  Color primaryColor = const Color(0xFFF8B229);
  Color secondaryColor = const Color(0xFF000000);
  Color tertiaryColor = const Color(0xFFF8B229);
  Color alternate = const Color(0xFF222222);
  Color primaryBackground = const Color(0xFFFFFFFF);
  Color secondaryBackground = const Color(0xFFEEEEEE);
  Color primaryText = const Color(0xFF000000);
  Color secondaryText = const Color(0xFF1E1E1E);

  Color background = Color(0xFF1A1F24);
  Color darkBackground = Color(0xFF111417);
  Color textColor = Color(0xFFFFFFFF);
  Color grayDark = Color(0xFF57636C);
  Color grayLight = Color(0xFF1A1F24);
  Color errorRed = Color(0xFFF06A6A);
  Color btnText = Color(0xFFFFFFFF);
  Color lineColor = Color(0xFFDBE2E7);
  Color customColor3 = Color(0xFFDF3F3F);
  Color customColor4 = Color(0xFF090F13);
  Color white = Color(0xFFFFFFFF);
}

class DarkModeTheme extends FlutterFlowTheme {
  Color primaryColor = const Color(0xFFF8B229);
  Color secondaryColor = const Color(0xFF000000);
  Color tertiaryColor = const Color(0xFFF8B229);
  Color alternate = const Color(0xFFEAEAEA);
  Color primaryBackground = const Color(0xFF070606);
  Color secondaryBackground = const Color(0xFF292929);
  Color primaryText = const Color(0xFFFFFFFF);
  Color secondaryText = const Color(0xFFC7C7C7);

  Color background = Color(0xFF1A1F24);
  Color darkBackground = Color(0xFF111417);
  Color textColor = Color(0xFFFFFFFF);
  Color grayDark = Color(0xFF57636C);
  Color grayLight = Color(0xFF1A1F24);
  Color errorRed = Color(0xFFF06A6A);
  Color btnText = Color(0xFFFFFFFF);
  Color lineColor = Color(0xFF323B45);
  Color customColor3 = Color(0xFFDF3F3F);
  Color customColor4 = Color(0xFF090F13);
  Color white = Color(0xFFFFFFFF);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String fontFamily,
    Color color,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool useGoogleFonts = true,
    TextDecoration decoration,
    double lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
