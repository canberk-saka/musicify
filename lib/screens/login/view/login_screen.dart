import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicify/base/base_state.dart';
import 'package:musicify/navigation/app_router.dart';
import 'package:musicify/navigation/app_routes.dart';
import 'package:musicify/screens/login/cubit/cubit/login_screen_cubit.dart';
import 'package:musicify_widgets/musicify_widgets.dart';

part '../../login/view/widgets/login_screen_widgets.dart';

///{@template GirisEkrani}
///Giriş Ekranı
///{@endtemplate }
class LoginScreen extends StatelessWidget {
  ///{@macro GirisEkrani}
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<LoginScreenCubit>(
        create: (_) => LoginScreenCubit(),
        child: const LoginScreenView(),
      );
}

///{@macro GirisEkrani}
final class LoginScreenView extends StatefulWidget {
  ///{@macro GirisEkrani}
  const LoginScreenView({super.key});

  @override
  State<LoginScreenView> createState() => _LoginScreenViewState();
}

final class _LoginScreenViewState extends BaseState<LoginScreenView, LoginScreenCubit> with LoginScreenWidgets {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _appBar(),
        body: _body(),
      );
}
