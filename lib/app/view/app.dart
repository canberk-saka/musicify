import 'package:flutter/material.dart';
import 'package:musicify/l10n/l10n.dart';
import 'package:musicify/navigation/app_router.dart';
import 'package:musicify/theme/dark_theme.dart';
import 'package:musicify/theme/light_theme.dart';

///{@template App}
///App Ekranı
///{@endtemplate}
class App extends StatelessWidget {
  ///{@macro App}
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: LightTheme().theme,
      darkTheme: DarkTheme().theme,
      themeMode: ThemeMode.dark,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: AppRouter.router,
    );
  }
}
