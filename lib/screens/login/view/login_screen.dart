import 'package:flutter/material.dart';
import 'package:musicify/l10n/l10n.dart';
import 'package:musicify/navigation/app_router.dart';
import 'package:musicify/navigation/app_routes.dart';
import 'package:musicify_widgets/musicify_widgets.dart';

part '../../login/view/widgets/login_screen_widgets.dart';

///{@template GirisEkrani}
///Giriş Ekranı
///{@endtemplate }
final class LoginScreen extends StatefulWidget {
  ///{@macro GirisEkrani}
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final class _LoginScreenState extends State<LoginScreen> with LoginScreenWidgets {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
    );
  }
}
