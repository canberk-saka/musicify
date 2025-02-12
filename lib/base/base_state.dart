import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicify/base/base_cubit.dart';
import 'package:musicify/l10n/l10n.dart';

///State için base class
abstract base class BaseState<T extends StatefulWidget, R extends BaseCubit<Equatable>> extends State<T> {
  ///read çağırma metodu
  R get read => context.read<R>();

  ///Localizations metodu
  AppLocalizations get l10n => AppLocalizations.of(context);

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      log(timeStamp.toString(), name: 'Time Stamp');
    });
    super.initState();
  }
}
