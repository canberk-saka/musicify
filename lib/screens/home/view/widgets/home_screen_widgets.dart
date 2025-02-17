part of '../../view/home_screen.dart';

///Home ekranının widgetları
base mixin HomeScreenWidgets on BaseState<HomeScreenView, HomeCubit> {
  late final ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await read.getAuth();
      await read.getUser();
      //await read.getUsersPlaylist();

      await Future.wait([
        read.getNewAlbums(),
        read.getFollowedArtists(),
      ]);
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  ///Home ekranı appBarı
  AppBar _appBar() => AppBar(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        title: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) => Row(
            spacing: 5,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 20,
                backgroundImage: Image.network(state.user?.images?.firstOrNull?.url ?? '').image,
              ),
              Text(
                state.user?.displayName ?? '',
                style: TextStyle(
                  color: theme.colorScheme.onSurface,
                  fontWeight: FontWeight.bold,
                ),
              ),
              if (state.user?.product == 'premium')
                const FaIcon(
                  FontAwesomeIcons.crown,
                  size: 17,
                  color: Color.fromARGB(255, 255, 232, 59),
                ),
            ],
          ),
        ),
        actions: const [],
      );

  ///Home ekranı body'si
  Widget _body() => RefreshIndicator.adaptive(
        onRefresh: () => read.refresh(),
        child: SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          controller: _scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: Text(
                  l10n.newReleases,
                  style: TextStyle(fontSize: 20, color: theme.colorScheme.onSurface, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 300,
                child: BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) =>
                      state.isLoading! ? _buildShimmerList() : _buildNewReleasesList(state, state.albums?.albums?.items, _newReleaseCard),
                ),
              ),
              SizedBox(
                height: 300,
                child: BlocBuilder<HomeCubit, HomeState>(
                  builder: (context, state) => state.isLoading!
                      ? _buildShimmerList()
                      : _buildNewReleasesList<FollowedArtistItem>(state, state.artist?.artists?.items, _artistCard),
                ),
              ),
            ],
          ),
        ),
      );
  Widget _buildNewReleasesList<T extends JsonableInterface<T>>(HomeState state, List<T>? items, Widget Function(T?) card) =>
      MusicifyHorizontalListView(
        items: items,
        itemBuilder: card,
      );

  Widget _newReleaseCard(ItemNewRealeases? album) => Container(
        width: 220,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: Card(
          color: Colors.transparent,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Albüm Resmi
              if (album?.images?.firstOrNull?.url != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    album?.images?.firstOrNull?.url ?? '',
                    width: 200,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                )
              else
                const SizedBox.shrink(),

              const SizedBox(height: 10),

              Text(
                album?.name ?? '',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: theme.colorScheme.primary),
              ),

              const SizedBox(height: 5),

              // Albüm Sanatçısı
              Text(
                album?.artists?.firstOrNull?.name ?? '',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: theme.colorScheme.onSurface),
              ),
            ],
          ),
        ),
      );

  Widget _artistCard(FollowedArtistItem? artist) => Text(artist!.href!);

  // Widget _artistCard(Artist? artist) => Container(
  //   width: 220,
  //   margin: const EdgeInsets.symmetric(horizontal: 8),
  //   child: Card(
  //     color: Colors.transparent,
  //     elevation: 0,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.circular(12),
  //     ),
  //     child: Column(
  //       mainAxisSize: MainAxisSize.min,
  //       children: [
  //         // Albüm Resmi
  //         if (artist?.artists?.items?.firstOrNull?.url != null)
  //           ClipRRect(
  //             borderRadius: BorderRadius.circular(12),
  //             child: Image.network(

  //               artist.artists?.items?.images?.firstOrNull?.url ?? '',
  //               width: 200,
  //               height: 200,
  //               fit: BoxFit.cover,
  //             ),
  //           )
  //         else
  //           const SizedBox.shrink(),

  //         const SizedBox(height: 10),

  //         Text(
  //           album?.name ?? '',
  //           textAlign: TextAlign.center,
  //           style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: theme.colorScheme.primary),
  //         ),

  //         const SizedBox(height: 5),

  //         // Albüm Sanatçısı
  //         Text(
  //           album?.artists?.firstOrNull?.name ?? '',
  //           textAlign: TextAlign.center,
  //           style: TextStyle(fontSize: 14, color: theme.colorScheme.onSurface),
  //         ),
  //       ],
  //     ),
  //   ),
  // );

  Widget _buildShimmerList() => ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Shimmer.fromColors(
          baseColor: theme.colorScheme.surface,
          highlightColor: theme.colorScheme.surfaceBright,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              width: 200,
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 180,
                    height: 180,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 100,
                    height: 20,
                    color: Colors.white,
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 120,
                    height: 15,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
