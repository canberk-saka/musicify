part of '../tracks_list.dart';

///Şarkıların listelendiği sayfa widget'ları
base mixin TracksListWidgets on BaseState<TracksListView, TracksCubit> {
  AppBar _appBar() => AppBar(title: const Text('Top Tracks'));

  Widget _body(TrackTopItem tracksTopItem) => BlocBuilder<TracksCubit, TracksState>(
        builder: (context, state) {
          if (tracksTopItem.items == null || tracksTopItem.items!.isEmpty) {
            return const Center(child: Text('No data available'));
          }

          return ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: tracksTopItem.items!.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              final item = tracksTopItem.items![index];

              return ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    item.album?.images?.firstOrNull?.url ?? 'https://via.placeholder.com/50',
                    width: pageWidht * 0.2,
                    height: pageHeight * 0.2,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  item.name ?? 'Unknown Song',
                  style: TextStyle(color: theme.colorScheme.primary, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(item.artists?.firstOrNull?.name ?? 'Unknown Artist'),
                trailing: Text('#${index + 1}'),
              );
            },
          );
        },
      );
}
