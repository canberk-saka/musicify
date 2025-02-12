import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicify/base/base_state.dart';
import 'package:musicify/screens/sign_up/cubit/sign_up_cubit.dart';
import 'package:musicify_widgets/musicify_widgets.dart';

part '../../sign_up/view/widgets/sign_up_screen_widgets.dart';

///{@template signUpScreen}
///Kayıt olma ekranı
///{@endtemplate}
class SignUpScreen extends StatelessWidget {
  ///{@macro signUpScreen}

  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<SignUpCubit>(
        create: (_) => SignUpCubit(),
        child: const SignUpScreenWiew(),
      );
}

///{@macro signUpScreen}
class SignUpScreenWiew extends StatefulWidget {
  ///{@macro signUpScreen}
  const SignUpScreenWiew({super.key});

  @override
  State<SignUpScreenWiew> createState() => _SignUpScreenWiewState();
}

final class _SignUpScreenWiewState extends BaseState<SignUpScreenWiew, SignUpCubit> with SignUpScreenWidgets {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _appBar(),
        body: _body(),
      );
}
