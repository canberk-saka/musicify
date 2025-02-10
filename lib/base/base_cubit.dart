import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///{@template baseCubit}
///Base Cubit
///{@endtemplate}
abstract class BaseCubit<T extends Equatable> extends Cubit<T> {
  ///{@macro baseCubit}
  BaseCubit(super.state);

  @override
  void emit(T state) {
    if (isClosed) return;
    super.emit(state);
  }
}
