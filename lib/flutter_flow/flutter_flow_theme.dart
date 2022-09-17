// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:shared_preferences/shared_preferences.dart';

const kThemeModeKey = '__theme_mode__';
SharedPreferences? _prefs;

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

  late Color primaryColor;
  late Color secondaryColor;
  late Color tertiaryColor;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;

  late Color background;
  late Color darkBackground;
  late Color textColor;
  late Color grayDark;
  late Color grayLight;
  late Color errorRed;
  late Color btnText;
  late Color lineColor;
  late Color customColor3;
  late Color customColor4;
  late Color white;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFFF8B229);
  late Color secondaryColor = const Color(0xFF000000);
  late Color tertiaryColor = const Color(0xFFF8B229);
  late Color alternate = const Color(0xFF222222);
  late Color primaryBackground = const Color(0xFFFFFFFF);
  late Color secondaryBackground = const Color(0xFFEEEEEE);
  late Color primaryText = const Color(0xFF000000);
  late Color secondaryText = const Color(0xFF1E1E1E);

  late Color background = Color(0xFF1A1F24);
  late Color darkBackground = Color(0xFF111417);
  late Color textColor = Color(0xFFFFFFFF);
  late Color grayDark = Color(0xFF57636C);
  late Color grayLight = Color(0xFF1A1F24);
  late Color errorRed = Color(0xFFF06A6A);
  late Color btnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFFDBE2E7);
  late Color customColor3 = Color(0xFFDF3F3F);
  late Color customColor4 = Color(0xFF090F13);
  late Color white = Color(0xFFFFFFFF);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final FlutterFlowTheme theme;

  String get title1Family => 'Lexend Deca';
  TextStyle get title1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: theme.textColor,
        fontWeight: FontWeight.bold,
        fontSize: 24,
      );
  String get title2Family => 'Lexend Deca';
  TextStyle get title2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: theme.primaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 28,
      );
  String get title3Family => 'Lexend Deca';
  TextStyle get title3 => GoogleFonts.getFont(
        'Lexend Deca',
        color: theme.primaryColor,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  String get subtitle1Family => 'Lexend Deca';
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: theme.grayLight,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  String get subtitle2Family => 'Lexend Deca';
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: theme.grayLight,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  String get bodyText1Family => 'Lexend Deca';
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Lexend Deca',
        color: theme.grayLight,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  String get bodyText2Family => 'Lexend Deca';
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Lexend Deca',
        color: theme.textColor,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}

class DarkModeTheme extends FlutterFlowTheme {
  late Color primaryColor = const Color(0xFFF8B229);
  late Color secondaryColor = const Color(0xFF000000);
  late Color tertiaryColor = const Color(0xFFF8B229);
  late Color alternate = const Color(0xFFEAEAEA);
  late Color primaryBackground = const Color(0xFF070606);
  late Color secondaryBackground = const Color(0xFF292929);
  late Color primaryText = const Color(0xFFFFFFFF);
  late Color secondaryText = const Color(0xFFC7C7C7);

  late Color background = Color(0xFF1A1F24);
  late Color darkBackground = Color(0xFF111417);
  late Color textColor = Color(0xFFFFFFFF);
  late Color grayDark = Color(0xFF57636C);
  late Color grayLight = Color(0xFF1A1F24);
  late Color errorRed = Color(0xFFF06A6A);
  late Color btnText = Color(0xFFFFFFFF);
  late Color lineColor = Color(0xFF323B45);
  late Color customColor3 = Color(0xFFDF3F3F);
  late Color customColor4 = Color(0xFF090F13);
  late Color white = Color(0xFFFFFFFF);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily!,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
