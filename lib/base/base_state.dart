import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///State için base class
abstract base class BaseState<T extends StatefulWidget, C extends Cubit<dynamic>> extends State<T> {
  ///read çağırma metodu
  C get read => context.read<C>();
}
