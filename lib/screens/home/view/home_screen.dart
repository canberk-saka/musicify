import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:musicify/base/base_state.dart';
import 'package:musicify/data/models/item_new_realeases.dart';
import 'package:musicify/screens/home/cubit/home_cubit.dart';
import 'package:musicify_widgets/musicify_widgets.dart';
import 'package:shimmer/shimmer.dart';

part '../view/widgets/home_screen_widgets.dart';

///{@template homeScreen}
///Ana Sayfa Ekranı
///{@endtemplate}

class HomeScreen extends StatelessWidget {
  ///{@macro homeScreen}πgo
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => BlocProvider<HomeCubit>(
        create: (_) => HomeCubit(),
        child: const HomeScreenView(),
      );
}

///{@macro homeScreen}
class HomeScreenView extends StatefulWidget {
  ///{macro homeScreen}
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

final class _HomeScreenViewState extends BaseState<HomeScreenView, HomeCubit> with HomeScreenWidgets {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _appBar(),
        body: _body(),
      );
}
