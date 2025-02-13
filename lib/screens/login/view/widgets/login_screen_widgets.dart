part of '../../view/login_screen.dart';

///Login ekranının widgetları
base mixin LoginScreenWidgets on BaseState<LoginScreenView, LoginScreenCubit> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  ///Şifre ve email doğruluğuna bakar
  bool validateFields(String password, String email) {
    if (password.isEmpty || email.isEmpty) {
      DialogManager.showSnackBar(l10n.emptyFields, Colors.red);

      return false;
    }

    return true;
  }

  ///Login ekranı appBarı'ı
  AppBar _appBar() => AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      );

  ///Login ekranı body'si
  Padding _body() => Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: _formKey,
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
                    controller: _emailController,
                    labelText: l10n.eMail,
                    icon: const Icon(Icons.email),
                  ),
                  BlocBuilder<LoginScreenCubit, LoginScreenState>(
                    builder: (context, state) => MusicifyTextField.obscure(
                      controller: _passwordController,
                      labelText: l10n.password,
                      isObsecure: state.isObscure,
                      changeObscure: () => read.changeObscure(),
                      icon: const Icon(Icons.key),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () async {
                        final isConfirm = validateFields(_emailController.text, _passwordController.text);

                        if (isConfirm) {
                          try {
                            final result = await DependencyInjector.read<FirebaseAuthManager>()
                                .signInWithEmailAndPassword(_emailController.text, _passwordController.text);
                            if (result?.user != null) {
                              await AppRouter.push(AppRoutes.spotifyAuth);
                            }
                          } catch (e) {
                            DialogManager.showSnackBar(l10n.loginFailed, Colors.red);
                          }
                        }
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
}
