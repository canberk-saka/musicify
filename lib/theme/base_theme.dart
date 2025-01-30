import 'package:flutter/material.dart';

/// Temalar için base class
abstract base class BaseTheme {
  ///ColorScheme'in tanımlanması
  ColorScheme get colorScheme => ColorScheme.fromSeed(
        seedColor: Colors.green,
        brightness: brightness,
        dynamicSchemeVariant: DynamicSchemeVariant.fruitSalad,
      );

  ///ThemeData'nın oluşturulması
  ThemeData get theme => ThemeData(
        colorScheme: colorScheme,
      );

  ///Brightness değerinin alınması
  Brightness get brightness;
}
