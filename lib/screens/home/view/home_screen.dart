import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicify/base/base_state.dart';
import 'package:musicify/data/datasources/remote/auth_api_manager.dart';
import 'package:musicify/screens/home/cubit/home_cubit.dart';

part '../view/widgets/home_screen_widgets.dart';

///{@template homeScreen}
///Ana Sayfa Ekranı
///{@endtemplate}

class HomeScreen extends StatefulWidget {
  ///{macro homeScreen}
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final class _HomeScreenState extends BaseState<HomeScreen, HomeCubit> with HomeScreenWidgets {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await AuthApiManager().getAuth();
      await read.getUser();
    });
  }

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => HomeCubit(),
        child: Scaffold(
          appBar: _appBar(),
          body: _body(),
        ),
      );
}
