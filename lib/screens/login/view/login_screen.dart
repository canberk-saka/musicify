import 'package:flutter/material.dart';
import 'package:musicify/l10n/l10n.dart';

part '../../login/view/widgets/login_screen_widgets.dart';

final class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final class _LoginScreenState extends State<LoginScreen>
    with LoginScreenWidgets {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: body(),
    );
  }
}
