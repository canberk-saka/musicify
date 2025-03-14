import 'package:equatable/equatable.dart';
import 'package:musicify/base/base_cubit.dart';

part 'tracks_state.dart';

///{@template tracks_cubit}
///Tracks sayfası için cubit sınıfı
///{@endtemplate}
final class TracksCubit extends BaseCubit<TracksState> {
  ///{@macro tracks_cubit}
  TracksCubit() : super(const TracksState());
}
