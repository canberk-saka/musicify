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
      await Future.wait([
        read.getUser(),
        read.getNewAlbums(),
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
                radius: 20,
                backgroundImage: Image.network(state.user?.images?.firstOrNull?.url ?? '').image,
              ),
              Text(state.user?.displayName ?? ''),
              if (state.user?.product == 'premium')
                const FaIcon(
                  FontAwesomeIcons.crown,
                  size: 17,
                  color: Colors.yellow,
                ),
            ],
          ),
        ),
        actions: const [],
      );

  ///Home ekranı body'si
  Widget _body() => SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              child: const Text(
                'Yeni Çıkan Albümler',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 300,
              child: BlocBuilder<HomeCubit, HomeState>(
                builder: (context, state) => Scrollbar(
                  interactive: true,
                  controller: _scrollController,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: state.albums?.albums?.items?.length ?? 0,
                    itemBuilder: (context, index) {
                      final album = state.albums?.albums?.items?[index];
                      return _card(album);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Widget _card(ItemNewRealeases? album) => Container(
        width: 250,
        margin: const EdgeInsets.symmetric(horizontal: 8),
        child: Card(
          elevation: 4,
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
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 5),

              // Albüm Sanatçısı
              Text(
                album?.artists?.firstOrNull?.name ?? '',
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
        ),
      );
}
