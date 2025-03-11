part of '../../view/login_screen.dart';

///Login ekranının widgetları
base mixin LoginScreenWidgets on BaseState<LoginScreenView, LoginScreenCubit> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  ///Şifre ve email doğruluğuna bakar
  bool validateFields(String password, String email) {
    if (password.isEmpty || email.isEmpty) {
      DialogManager.showSnackBar(
        context,
        message: l10n.emptyFields,
        color: Colors.red,
      );

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
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: theme.colorScheme.primary,
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
                    icon: Icon(
                      Icons.email,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  BlocBuilder<LoginScreenCubit, LoginScreenState>(
                    builder: (context, state) => MusicifyTextField.obscure(
                      color: theme.colorScheme.primary,
                      controller: _passwordController,
                      labelText: l10n.password,
                      isObsecure: state.isObscure,
                      changeObscure: () => getCubit.changeObscure(),
                      icon: Icon(
                        Icons.key,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () async {
                        final isConfirm = validateFields(
                          _emailController.text,
                          _passwordController.text,
                        );

                        if (isConfirm) {
                          //DialogManager.showLoadingAlertDialog(context);

                          await Future<void>.delayed(
                            const Duration(seconds: 2),
                          );
                          try {
                            final result = await DependencyInjector.read<FirebaseAuthManager>().signInWithEmailAndPassword(
                              _emailController.text,
                              _passwordController.text,
                            );

                            if (result?.user != null) {
                              await AppRouter.push(AppRoutes.spotifyAuth);
                              //DialogManager.closeLoadingAlertDialog();
                            }
                          } catch (e) {
                            DialogManager.showSnackBar(
                              AppRouter.getContext!,
                              message: l10n.loginFailed,
                              color: Colors.red,
                            );
                          }
                        }
                      },
                      child: Text(l10n.login),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.viewInsetsOf(context).bottom,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text(l10n.dontHaveAccount)),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: TextButton(
                        onPressed: () {
                          AppRouter.push(AppRoutes.signUp);
                        },
                        child: Text(l10n.signUp),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
