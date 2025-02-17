import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:musicify/dependency_injection/interface/injectable_interface.dart';
import 'package:musicify/l10n/l10n.dart';
import 'package:musicify/navigation/app_router.dart';
import 'package:musicify/services/dialog_manager.dart';

///{@template firebaseAuthManager}
///Firebase Auth işlemlerinin yapıldığı sınıf
///{@endtemplate}
final class FirebaseAuthManager implements InjectableInterface {
  ///{@macro firebaseAuthManager}
  static final _auth = FirebaseAuth.instance;

  ///Context almak için kullanılır
  final getContext = AppRouter.getContext;

  ///Email ve şifre ile giriş yapma işlemi
  Future<UserCredential?> signInWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      DialogManager.showSnackBar(getContext!, message: getContext!.l10n.loginFailed, color: Colors.red);
    }
    return null;
  }

  ///Email ve şifre ile kayıt olma işlemi
  Future<UserCredential?> signUpWithEmailAndPassword(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      DialogManager.showSnackBar(getContext!, message: getContext!.l10n.registerFailed, color: Colors.red);
    }
    return null;
  }

  @override
  Future<void> load() async {}
}
