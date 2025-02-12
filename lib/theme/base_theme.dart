import 'package:flutter/material.dart';

/// Temalar için base class
abstract base class BaseTheme {
  ///ColorScheme'in tanımlanması
  ColorScheme get colorScheme => ColorScheme.fromSeed(
        seedColor: Colors.grey,
        brightness: brightness,
        dynamicSchemeVariant: DynamicSchemeVariant.fruitSalad,
      );

  ///ThemeData'nın oluşturulması
  ThemeData get theme => ThemeData(
        appBarTheme: AppBarTheme(color: colorScheme.surfaceContainerLow),
        colorScheme: colorScheme,
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: WidgetStateProperty.resolveWith(
            (states) => states.contains(WidgetState.hovered) ? colorScheme.primary : colorScheme.primaryContainer,
          ),
          thickness: WidgetStateProperty.resolveWith(
            (states) => states.contains(WidgetState.hovered) ? 10 : 5,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
      );

  ///Brightness değerinin alınması
  Brightness get brightness;

  ///AppBar renginin alınması
  Color get appBarColor;
}
