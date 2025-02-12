import 'package:flutter/material.dart';
import 'package:musicify/navigation/app_router.dart';

///{@template dialogManager}
///Dialog işlemlerinin yapıldığı sınıf
///{@endtemplate}
final class DialogManager {
  ///{@macro dialogManager}

  ///Mesaj

  ///SnackBar gösterme metodu
  static void showSnackBar(String message) {
    final currentContext = AppRouter.getContext;
    if (currentContext != null) {
      ScaffoldMessenger.of(currentContext).showSnackBar(SnackBar(content: Text(message)));
    }
  }
}
