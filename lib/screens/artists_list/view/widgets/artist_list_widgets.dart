part of '../artist_list.dart';

///Artist listesi için widgetlar
base mixin ArtistListWidgets on BaseState<ArtistListView, ArtistCubit> {
  AppBar _appBar() => AppBar(title: const Text('Top Artists'));

  Widget _body(UserTopItem artistTopItemInfo) => BlocBuilder<ArtistCubit, ArtistState>(
        builder: (context, state) {
          if (artistTopItemInfo.items == null || artistTopItemInfo.items!.isEmpty) {
            return const Center(child: Text('No data available'));
          }

          return ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: artistTopItemInfo.items!.length,
            separatorBuilder: (context, index) => const Divider(),
            itemBuilder: (context, index) {
              final item = artistTopItemInfo.items![index];

              return ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    item.images?[0].url ?? 'https://via.placeholder.com/50',
                    width: pageWidht * 0.2,
                    height: pageHeight * 0.2,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  item.name ?? 'Unknown Song',
                  style: TextStyle(color: theme.colorScheme.primary, fontWeight: FontWeight.bold),
                ),
                trailing: Text('#${index + 1}'),
              );
            },
          );
        },
      );
}
