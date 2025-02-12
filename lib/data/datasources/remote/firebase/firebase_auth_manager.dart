import 'package:firebase_auth/firebase_auth.dart';
import 'package:musicify/dependency_injection/interface/injectable_interface.dart';
import 'package:musicify/l10n/l10n.dart';
import 'package:musicify/navigation/app_router.dart';
import 'package:musicify/services/dialog_manager.dart';

///{@template firebaseAuthManager}
///Firebase Auth işlemlerinin yapıldığı sınıf
///{@endtemplate}
final class FirebaseAuthManager implements InjectableInterface {
  ///{@macro firebaseAuthManager}
  static final auth = FirebaseAuth.instance;

  ///Email ve şifre ile giriş yapma işlemi
  Future<UserCredential?> signInWithEmailAndPassword(String email, String password) async {
    try {
      return await auth.signInWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      final getContext = AppRouter.getContext;
      DialogManager.showSnackBar(getContext!.l10n.registerFailed);
    }
    return null;
  }

  ///Email ve şifre ile kayıt olma işlemi
  Future<UserCredential?> signUpWithEmailAndPassword(String email, String password) async {
    try {
      return await auth.createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      DialogManager.showSnackBar('Kayıt olma işlemi başarısız');
    }
    return null;
  }

  @override
  Future<void> load() async {}
}
