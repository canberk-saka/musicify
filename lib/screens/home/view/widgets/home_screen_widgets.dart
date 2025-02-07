part of '../../view/home_screen.dart';

///Home ekranının widgetları
base mixin HomeScreenWidgets on State<HomeScreen> {
  /// Kullanıcı bilgilerini al
  // Future<void> _getUserInfo() async {
  //   final auth = AuthApiManager();
  //   await auth.getAuth();

  //   final getUserInfo = UserApiManager();
  //   user = await getUserInfo.getUser();
  // }

  ///Home ekranı appBarı
  AppBar _appBar() => AppBar();

  ///Home ekranı body'si
  Widget _body() => Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () async {
                await context.read<HomeCubit>().getUser();
              },
              child: const Text('Get User'),
            ),
          ),
          BlocBuilder<HomeCubit, HomeState>(
            builder: (context, state) => Text(state.user?.email ?? 'deneme'),
          ),
        ],
      );
}
