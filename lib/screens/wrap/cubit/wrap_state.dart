part of 'wrap_cubit.dart';

///{@template WrapState}
///Wrap State
///{@endtemplate}
final class WrapState extends Equatable {
  ///{@macro WrapState}
  const WrapState({
    this.trackTopItemInfo,
    this.artistTopItemInfo,
  });

  ///Şarkı top item bilgilerinin tutulduğu değişken
  final TrackTopItem? trackTopItemInfo;

  ///Artist top item bilgilerinin tutulduğu değişken
  final UserTopItem? artistTopItemInfo;

  @override
  List<Object?> get props => [trackTopItemInfo, artistTopItemInfo];

  ///Top item bilgilerini güncelle
  WrapState copyWith({
    ValueGetter<TrackTopItem?>? tracksTopItemInfo,
    ValueGetter<UserTopItem?>? artistTopItemInfo,
  }) =>
      WrapState(
        trackTopItemInfo: tracksTopItemInfo?.call() ?? trackTopItemInfo,
        artistTopItemInfo: artistTopItemInfo?.call() ?? this.artistTopItemInfo,
      );
}
