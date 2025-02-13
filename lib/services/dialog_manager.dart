import 'package:flutter/material.dart';
import 'package:musicify/navigation/app_router.dart';

///{@template dialogManager}
///Dialog işlemlerinin yapıldığı sınıf
///{@endtemplate}
final class DialogManager {
  ///{@macro dialogManager}

  ///SnackBar gösterme metodu
  static void showSnackBar(String message, Color? color) {
    final currentContext = AppRouter.getContext;
    if (currentContext != null) {
      ScaffoldMessenger.of(currentContext).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: color,
        ),
      );
    }
  }
}
