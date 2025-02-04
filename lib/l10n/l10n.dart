import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

export 'package:flutter_gen/gen_l10n/app_localizations.dart';

///{@template Localization}
///Localization
///{@endtemplate}
extension AppLocalizationsX on BuildContext {
  ///{@macro Localization}
  AppLocalizations get l10n => AppLocalizations.of(this);
}
