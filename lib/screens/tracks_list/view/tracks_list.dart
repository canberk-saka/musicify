import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:musicify/base/base_state.dart';
import 'package:musicify/data/models/track_top_item.dart';
import 'package:musicify/screens/tracks_list/cubit/tracks_cubit.dart';

part '../view/widgets/tracks_list_widgets.dart';

///{@template tracks_list}
///Şarkıların listelendiği sayfa
///{@endtemplate}
final class TracksList extends StatelessWidget {
  ///{@macro tracks_list}
  const TracksList({required this.tracksTopItem, super.key});

  ///Şarkı bilgileri
  final TrackTopItem tracksTopItem;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => TracksCubit(),
        child: TracksListView(
          tracksTopItem: tracksTopItem,
        ),
      );
}

///{@macro tracks_list_view}
final class TracksListView extends StatefulWidget {
  ///{@macro tracks_list_view}
  const TracksListView({required this.tracksTopItem, super.key});

  ///Şarkı bilgileri
  final TrackTopItem tracksTopItem;

  @override
  State<TracksListView> createState() => _TracksListViewState();
}

final class _TracksListViewState extends BaseState<TracksListView, TracksCubit> with TracksListWidgets {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: _appBar(),
        body: _body(widget.tracksTopItem),
      );
}
