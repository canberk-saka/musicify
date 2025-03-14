import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicify/base/base_state.dart';
import 'package:musicify/data/models/user_top_item.dart';
import 'package:musicify/screens/artists_list/cubit/artist_cubit.dart';

part '../view/widgets/artist_list_widgets.dart';

///{@template artist_list}
///Artistlerin listelendiği sayfası
///{@endtemplate}
final class ArtistList extends StatelessWidget {
  ///{@macro artist_list}
  const ArtistList({required this.artistTopItemInfo, super.key});

  ///Artist bilgileri
  final UserTopItem artistTopItemInfo;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => ArtistCubit(),
        child: ArtistListView(
          artistTopItemInfo: artistTopItemInfo,
        ),
      );
}

///{@macro artist_list_view}
final class ArtistListView extends StatefulWidget {
  ///{@macro artist_list_view}
  const ArtistListView({required this.artistTopItemInfo, super.key});

  ///Artist bilgileri
  final UserTopItem artistTopItemInfo;

  @override
  State<ArtistListView> createState() => _ArtistListViewState();
}

final class _ArtistListViewState extends BaseState<ArtistListView, ArtistCubit> with ArtistListWidgets {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _appBar(),
        body: _body(widget.artistTopItemInfo),
      );
}
