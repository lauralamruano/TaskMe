import 'package:flutter/material.dart';

import 'package:block/themes/theme.dart';
import 'package:block/themes/theme_azul.dart';
import 'package:block/themes/theme_orange.dart';
import 'package:block/themes/theme_red.dart';

class ColorTheme {
  final ThemeData theme;
  final ThemeData darkTheme;

  ColorTheme({required this.theme, required this.darkTheme});
}

List<ColorTheme> themes = [
  ColorTheme(
    theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
    darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
  ),
  ColorTheme(
    theme: ThemeData(useMaterial3: true, colorScheme: lightColorSchemeBlue),
    darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorSchemeBlue),
  ),
  ColorTheme(
    theme: ThemeData(useMaterial3: true, colorScheme: lightColorSchemeOrange),
    darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorSchemeOrange),
  ),
  ColorTheme(
    theme: ThemeData(useMaterial3: true, colorScheme: lightColorSchemeRed),
    darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorSchemeRed),
  ),
];
