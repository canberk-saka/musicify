part of '../wrap_screen.dart';

///Wrap Sayfası Widget'ları
base mixin WrapScreenWidgets on BaseState<WrapScreenView, WrapCubit> {
  late TabController _tabController;
  final Set<String> _selectedPeriod = {'1 Ay'};
  final CarouselSliderController _tracksCarouselController = CarouselSliderController();
  final CarouselSliderController _artistsCarouselController = CarouselSliderController();

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _fetchData(_selectedPeriod);
    });

    _tabController.addListener(() async {
      if (!_tabController.indexIsChanging) {
        await _fetchData(_selectedPeriod);
      }
    });
  }

  Future<void> _fetchData(Set<String> period) async {
    final term = _getSelectedTerm(period); // TODO(canberk): Burayı düzelt
    if (_tabController.index == 0) {
      await getCubit.getTracksTopItem(term);
    } else {
      await getCubit.getArtistsTopItem(term);
    }
  }

  QueryParamConstants _getSelectedTerm(Set<String> period) {
    switch (period.first) {
      case '6 Ay':
        return QueryParamConstants.mediumTerm;
      case '1 Yıl':
        return QueryParamConstants.longTerm;
      default:
        return QueryParamConstants.shortTerm;
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  AppBar _appBar() => AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(4),
            child: Center(
              child: SizedBox(
                height: pageHeight * 0.20,
                width: pageWidht * 0.7,
                child: BlocBuilder<WrapCubit, WrapState>(
                  builder: (context, state) => SegmentedButton(
                    segments: const [
                      ButtonSegment(value: '1 Ay', label: Text('1 Ay')),
                      ButtonSegment(value: '6 Ay', label: Text('6 Ay')),
                      ButtonSegment(value: '1 Yıl', label: Text('1 Yıl')),
                    ],
                    selected: state.period ?? _selectedPeriod,
                    onSelectionChanged: (Set<String> newSelection) async {
                      if (newSelection.isNotEmpty) {
                        await getCubit.changePeriod(newSelection);
                        await _fetchData(newSelection);
                      }
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(child: Text('Şarkılar')),
            Tab(child: Text('Sanatçılar')),
          ],
        ),
      );

  Widget _body() => TabBarView(
        controller: _tabController,
        children: [
          BlocBuilder<WrapCubit, WrapState>(
            builder: (context, state) {
              if (state.trackTopItemInfo == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return Center(child: _buildTracksCarousel(state));
              }
            },
          ),
          BlocBuilder<WrapCubit, WrapState>(
            builder: (context, state) {
              if (state.artistTopItemInfo == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return Center(child: _buildArtistsCarousel(state));
              }
            },
          ),
        ],
      );

  CarouselSlider _buildArtistsCarousel(WrapState state) => CarouselSlider.builder(
        carouselController: _artistsCarouselController,
        options: CarouselOptions(
          height: isLandscape ? pageHeight * 0.8 : pageHeight * 0.6,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          enlargeCenterPage: true,
        ),
        itemCount: min(5, state.artistTopItemInfo?.items?.length ?? 0),
        itemBuilder: (context, index, realIndex) {
          final item = state.artistTopItemInfo?.items?[index];
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                child: _cardImage(item?.images?[0].url ?? ''),
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                direction: Axis.vertical,
                children: [
                  Text(
                    item?.name ?? '',
                    style: TextStyle(
                      fontSize: 20,
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '#${index + 1}',
                    style: TextStyle(
                      fontSize: 20,
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      );

  ClipRRect _cardImage(String imageUrl) => ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(
          imageUrl,
          fit: isLandscape ? BoxFit.fill : BoxFit.cover,
          width: isLandscape ? pageWidht * 0.5 : pageWidht * 0.8,
          height: isLandscape ? pageHeight * 0.5 : pageHeight * 0.4,
        ),
      );

  CarouselSlider _buildTracksCarousel(WrapState state) => CarouselSlider.builder(
        carouselController: _tracksCarouselController,
        options: CarouselOptions(
          height: isLandscape ? pageHeight * 0.8 : pageHeight * 0.6,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          enlargeCenterPage: true,
        ),
        itemCount: min(5, state.trackTopItemInfo?.items?.length ?? 0),
        itemBuilder: (context, index, realIndex) {
          final item = state.trackTopItemInfo?.items?[index];
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    item?.album?.images?.firstOrNull?.url ?? '',
                    fit: isLandscape ? BoxFit.fill : BoxFit.cover,
                    width: isLandscape ? pageWidht * 0.5 : pageWidht * 0.8,
                    height: isLandscape ? pageHeight * 0.5 : pageHeight * 0.4,
                  ),
                ),
              ),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                direction: Axis.vertical,
                children: [
                  Text(
                    item?.artists?.first.name ?? '',
                    style: TextStyle(
                      fontSize: 20,
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    item?.name ?? '',
                    style: TextStyle(
                      fontSize: 16,
                      color: theme.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '#${index + 1}',
                    style: TextStyle(
                      fontSize: 20,
                      color: theme.colorScheme.onSurface,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      );
}
