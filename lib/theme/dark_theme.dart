import 'package:flutter/material.dart';
import 'package:musicify/theme/base_theme.dart';

///Koyu tema class'ı
final class DarkTheme extends BaseTheme {
  @override
  Brightness get brightness => Brightness.dark;

  @override
  Color get appBarColor => throw UnimplementedError();
}
