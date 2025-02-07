import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:musicify/base/base_cubit.dart';

///State için base class
abstract base class BaseState<T extends StatefulWidget, R extends BaseCubit<Equatable>> extends State<T> {
  ///read çağırma metodu
  // R get read => context.read<R>();
}
