part of 'wrap_cubit.dart';

///{@template WrapState}
///Wrap State
///{@endtemplate}
final class WrapState extends Equatable {
  ///{@macro WrapState}
  const WrapState({
    this.trackTopItemInfo,
    this.artistTopItemInfo,
    this.period,
  });

  ///Şarkı top item bilgilerinin tutulduğu değişken
  final TrackTopItem? trackTopItemInfo;

  ///Artist top item bilgilerinin tutulduğu değişken
  final UserTopItem? artistTopItemInfo;

  ///Zaman aralığını tutar
  final Set<String>? period;

  @override
  List<Object?> get props => [trackTopItemInfo, artistTopItemInfo, period];

  ///Top item bilgilerini güncelle
  WrapState copyWith({
    ValueGetter<TrackTopItem?>? tracksTopItemInfo,
    ValueGetter<UserTopItem?>? artistTopItemInfo,
    Set<String>? period,
  }) =>
      WrapState(
        trackTopItemInfo: tracksTopItemInfo?.call() ?? trackTopItemInfo,
        artistTopItemInfo: artistTopItemInfo?.call() ?? this.artistTopItemInfo,
        period: period ?? this.period,
      );
}
