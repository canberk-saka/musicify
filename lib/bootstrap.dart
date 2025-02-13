import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:musicify/dependency_injection/dependency_injector.dart';
import 'package:musicify/firebase_options.dart';

///{@template BlocObserver}
///Değişikliklerin gözlenmesi
///{@endtemplate}
class AppBlocObserver extends BlocObserver {
  ///{@macro BlocObserver}
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

///Bootstrap fonksiyonu
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjector.init();
  // Add cross-flavor configuration here
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(await builder());
}
