import 'package:equatable/equatable.dart';
import 'package:musicify/base/base_cubit.dart';

part 'artist_state.dart';

///{@template artist_cubit.dart}
///Artist sayfası için cubit sınıfı
///{@endtemplate}
final class ArtistCubit extends BaseCubit<ArtistState> {
  ///{@macro artist_cubit}
  ArtistCubit() : super(const ArtistState());
}
