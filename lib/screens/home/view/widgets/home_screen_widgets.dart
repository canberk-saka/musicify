part of '../../view/home_screen.dart';

///Home ekranının widgetları
base mixin HomeScreenWidgets on BaseState<HomeScreenView, HomeCubit> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await read.getAuth();
      await read.getUser();
    });
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
                backgroundImage: NetworkImage(state.user?.images?.firstOrNull?.url ?? ''),
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
  Widget _body() => Column(
        children: [
          Center(
            child: BlocBuilder<HomeCubit, HomeState>(
              builder: (context, state) => Text(state.user?.followers?.total.toString() ?? ''),
            ),
          ),
        ],
      );
}
