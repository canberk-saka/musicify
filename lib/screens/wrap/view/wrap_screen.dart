import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicify/base/base_state.dart';
import 'package:musicify/constants/query_param_constants.dart';
import 'package:musicify/screens/wrap/cubit/wrap_cubit.dart';

part 'widgets/wrap_screen_widgets.dart';

///{@template wrapScreen}
///Wrap Sayfası
///{@endtemplate}
final class WrapScreen extends StatelessWidget {
  ///{@macro wrapScreen}
  const WrapScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider<WrapCubit>(
        create: (context) => WrapCubit(),
        child: const WrapScreenView(),
      );
}

///{@macro wrapScreen}
final class WrapScreenView extends StatefulWidget {
  ///{macro wrapScreen}
  const WrapScreenView({super.key});

  @override
  State<WrapScreenView> createState() => _WrapScreenViewState();
}

final class _WrapScreenViewState extends BaseState<WrapScreenView, WrapCubit> with WrapScreenWidgets {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _appBar(),
        body: _body(),
      );
}
