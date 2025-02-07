part of '../../view/home_screen.dart';

///Home ekranının widgetları
base mixin HomeScreenWidgets on BaseState<HomeScreenView, HomeCubit> {
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
                await context.read<HomeCubit>().getAuth();
                //TODO(@canberk-saka): dioGet'i düzelt
                await context.read<HomeCubit>().getUser();
                log('User: ${context.read<HomeCubit>().state.user}');
              },
              child: const Text('Get User'),
            ),
          ),
        ],
      );
}
