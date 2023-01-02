import 'package:flutter/material.dart';
import 'dart:ui' as ui;

const kPrimaryColor = Color(0xFF6362E7);
const kSecondaryColorLightTheme = Color.fromARGB(255, 0, 0, 0);
const kSecondaryColorDarkTheme = Color.fromARGB(255, 255, 255, 255);

const kIconColorLightTheme = Color.fromARGB(255, 0, 0, 0);
const kIconColorDarkTheme = Color.fromARGB(255, 255, 255, 255);

const kContentColorLightTheme = Color.fromRGBO(29, 29, 53, 1);
const kContentColorDarkTheme = Color(0xFFF5FCF9);

const kWarninngColor = Color(0xFFF3BB1C);
const kErrorColor = Color(0xFFF03738);
const kDefaultPadding = 20.0;

const kScaffoldBackgroundColorDarkTheme = Color.fromARGB(115, 41, 41, 41);
const kScaffoldBackgroundColorLightTheme = Color.fromRGBO(247, 251, 254, 1);

const kBackgroundColorLightTheme = Color.fromARGB(255, 255, 255, 255);
const kBackgroundColorDarkTheme = Color(0xFF262932);

const kBackgroundCodeAreaColorLightTheme = Color.fromARGB(255, 255, 255, 255);
const kBackgroundCodeAreaColorDarkTheme = ui.Color.fromARGB(255, 46, 46, 45);

//LightTheme
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: kPrimaryColor,
  iconTheme: const IconThemeData(color: kIconColorLightTheme),
  textTheme: lightTextTheme,
  scaffoldBackgroundColor: kScaffoldBackgroundColorLightTheme,
  backgroundColor: kBackgroundColorLightTheme,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: kBackgroundColorLightTheme,
  ),
  colorScheme: const ColorScheme.light(
    background: kBackgroundCodeAreaColorLightTheme,
    primary: kPrimaryColor,
    secondary: kSecondaryColorLightTheme,
    error: kErrorColor,
  ),
);

TextStyle lightTitleMediumTextStyle = const TextStyle(
  fontFamily: "Roboto",
  fontSize: 15,
  color: kSecondaryColorLightTheme,
  fontWeight: FontWeight.bold,
);

TextStyle lightTitleLargeTextStyle = const TextStyle(
  fontFamily: "Roboto",
  fontSize: 22,
  color: kSecondaryColorLightTheme,
  fontWeight: FontWeight.w600,
);

TextStyle lightTitleSmallTextStyle = const TextStyle(
  fontFamily: "Roboto",
  fontSize: 11,
  color: kSecondaryColorLightTheme,
  fontWeight: FontWeight.bold,
);

TextStyle lightDisplaySmallTextStyle = const TextStyle(
  fontFamily: "Roboto",
  fontSize: 11,
  color: kSecondaryColorLightTheme,
  fontWeight: FontWeight.w600,
);

TextTheme lightTextTheme = TextTheme(
  titleLarge: lightTitleLargeTextStyle,
  titleMedium: lightTitleMediumTextStyle,
  titleSmall: lightTitleSmallTextStyle,
  displaySmall: lightDisplaySmallTextStyle,
);

//DarkTheme
ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.white,
  iconTheme: const IconThemeData(color: kIconColorDarkTheme),
  textTheme: darkTextTheme,
  backgroundColor: kBackgroundColorDarkTheme,
  scaffoldBackgroundColor: kScaffoldBackgroundColorDarkTheme,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: kBackgroundColorDarkTheme,
  ),
  colorScheme: const ColorScheme.dark(
    background: kBackgroundCodeAreaColorDarkTheme,
    primary: kPrimaryColor,
    secondary: kSecondaryColorDarkTheme,
    error: kErrorColor,
  ),
);

TextStyle darkTitleMediumTextStyle = const TextStyle(
  fontFamily: "Roboto",
  fontSize: 15,
  color: kSecondaryColorDarkTheme,
  fontWeight: FontWeight.bold,
);

TextStyle darkTitleLargeTextStyle = const TextStyle(
  fontFamily: "Roboto",
  fontSize: 22,
  color: kSecondaryColorDarkTheme,
  fontWeight: FontWeight.w600,
);

TextStyle darkTitleSmallTextStyle = const TextStyle(
  fontFamily: "Roboto",
  fontSize: 11,
  color: kSecondaryColorDarkTheme,
  fontWeight: FontWeight.bold,
);

TextStyle darkDisplaySmallTextStyle = const TextStyle(
  fontFamily: "Roboto",
  fontSize: 11,
  color: kSecondaryColorDarkTheme,
  fontWeight: FontWeight.w600,
);

TextTheme darkTextTheme = TextTheme(
  titleLarge: darkTitleLargeTextStyle,
  titleMedium: darkTitleMediumTextStyle,
  titleSmall: darkTitleSmallTextStyle,
  displaySmall: darkDisplaySmallTextStyle,
);
