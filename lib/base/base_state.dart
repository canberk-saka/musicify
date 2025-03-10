import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicify/base/base_cubit.dart';
import 'package:musicify/l10n/l10n.dart';

///State için base class
abstract base class BaseState<T extends StatefulWidget,
        R extends BaseCubit<Equatable>> extends State<T>
    with TickerProviderStateMixin {
  ///read çağırma metodu
  R get getCubit => context.read<R>();

  ///theme çağırma metodu
  ThemeData get theme => Theme.of(context);

  ///Ekran yatayda mı?
  bool get isLandscape =>
      MediaQuery.of(context).orientation == Orientation.landscape;

  ///Localizations metodu
  AppLocalizations get l10n => AppLocalizations.of(context);

  ///Sayfa yüksekliği
  double get pageHeight => MediaQuery.sizeOf(context).height;

  ///Sayfa genişliği
  double get pageWidht => MediaQuery.sizeOf(context).width;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {});
    super.initState();
  }
}
