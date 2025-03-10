import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:musicify/base/base_cubit.dart';
import 'package:musicify/constants/query_param_constants.dart';
import 'package:musicify/data/datasources/remote/top_item_api_manager.dart';
import 'package:musicify/data/models/track_top_item.dart';
import 'package:musicify/data/models/user_top_item.dart';
import 'package:musicify/dependency_injection/dependency_injector.dart';

part 'wrap_state.dart';

///{@template WrapCubit}
///Wrap Cubit
///{@endtemplate}
final class WrapCubit extends BaseCubit<WrapState> {
  ///{@macro WrapCubit}
  WrapCubit() : super(const WrapState());

  ///Top item getirme işlemi
  Future<void> getTracksTopItem() async {
    final tracksTopItemInfo = await DependencyInjector.read<TopItemApiManager>()
        .getTracksTopItem(queryParamsConstants: QueryParamConstants.tracks);
    emit(state.copyWith(tracksTopItemInfo: () => tracksTopItemInfo));
  }

  ///Top item getirme işlemi
  Future<void> getArtistsTopItem() async {
    final artistsTopItemInfo =
        await DependencyInjector.read<TopItemApiManager>()
            .getTopItem(queryParamsConstants: QueryParamConstants.artists);
    emit(state.copyWith(artistTopItemInfo: () => artistsTopItemInfo));
  }
}
