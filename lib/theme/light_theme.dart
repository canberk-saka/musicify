import 'package:flutter/material.dart';
import 'package:musicify/theme/base_theme.dart';

///Açık tema class'ı
final class LightTheme extends BaseTheme {
  @override
  Brightness get brightness => Brightness.light;

  @override
  Color get appBarColor => throw UnimplementedError();
}
