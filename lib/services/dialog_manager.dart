import 'package:flutter/material.dart';
import 'package:musicify/navigation/app_router.dart';

///{@template dialogManager}
///Dialog işlemlerinin yapıldığı sınıf
///{@endtemplate}
final class DialogManager {
  ///{@macro dialogManager}

  ///SnackBar gösterme metodu
  static void showSnackBar(BuildContext context, {required String message, Color? color}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: color,
      ),
    );
  }

  ///LoadingAlertDialog gösterme metodu
  static void showLoadingAlertDialog(BuildContext context) {
    showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (context) => const AlertDialog(
        content: Row(
          children: [
            CircularProgressIndicator(),
            SizedBox(width: 20),
            Text('Yükleniyor...'),
          ],
        ),
      ),
    );
  }

  ///LoadingAlertDialog kapatma metodu
  static void closeLoadingAlertDialog() {
    final currentContext = AppRouter.getContext;
    if (currentContext != null) {
      Navigator.pop(currentContext); // Yükleme diyalogunu kapat
    }
  }
}
