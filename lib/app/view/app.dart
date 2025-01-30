import 'package:flutter/material.dart';
import 'package:musicify/l10n/l10n.dart';
import 'package:musicify/screens/login/view/login_screen.dart';
import 'package:musicify/theme/dark_theme.dart';
import 'package:musicify/theme/light_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: LightTheme().theme,
      darkTheme: DarkTheme().theme,
      themeMode: ThemeMode.light,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: const LoginScreen(),
    );
  }
}
