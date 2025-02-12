part of '../../view/login_screen.dart';

///Login ekranının widgetları
base mixin LoginScreenWidgets on BaseState<LoginScreenView, LoginScreenCubit> {
  ///Login ekranı appBarı'ı
  AppBar _appBar() => AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      );

  ///Login ekranı body'si
  Padding _body() => Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 20,
            children: [
              Flexible(
                flex: 3,
                child: Text(
                  l10n.login,
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: 25,
                children: [
                  MusicifyTextField(
                    labelText: l10n.eMail,
                    icon: const Icon(Icons.email),
                  ),
                  BlocBuilder<LoginScreenCubit, LoginScreenState>(
                    builder: (context, state) => MusicifyTextField.obscure(
                      labelText: l10n.password,
                      isObsecure: state.isObscure,
                      changeObscure: () => read.changeObscure(),
                      icon: const Icon(Icons.key),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {
                        AppRouter.push(AppRoutes.spotifyAuth);
                      },
                      child: Text(l10n.login),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text(l10n.dontHaveAccount)),
                  TextButton(
                    onPressed: () {
                      AppRouter.push(AppRoutes.signUp);
                    },
                    child: Text(l10n.signUp),
                  ),
                ],
              ),
            ],
          ),
        ),
      );

  ///Giriş ekranındaki textField widget'ı
  TextFormField textFieldWidget(String text, Icon icon) => TextFormField(
        decoration: InputDecoration(
          labelText: text,
          icon: icon,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
        ),
      );
}
