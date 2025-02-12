import 'package:firebase_auth/firebase_auth.dart';
import 'package:musicify/dependency_injection/interface/injectable_interface.dart';

///{@template firebaseAuthManager}
///Firebase Auth işlemlerinin yapıldığı sınıf
///{@endtemplate}
final class FirebaseAuthManager implements InjectableInterface {
  ///{@macro firebaseAuthManager}
  static final auth = FirebaseAuth.instance;

  ///Email ve şifre ile giriş yapma işlemi
  Future<UserCredential> signInWithEmailAndPassword(String email, String password) =>
      auth.signInWithEmailAndPassword(email: email, password: password);

  ///Email ve şifre ile kayıt olma işlemi
  Future<UserCredential> signUpWithEmailAndPassword(String email, String password) =>
      auth.createUserWithEmailAndPassword(email: email, password: password);

  @override
  Future<void> load() async {}
}
