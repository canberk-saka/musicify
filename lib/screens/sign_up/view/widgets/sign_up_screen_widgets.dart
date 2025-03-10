part of '../../view/sign_up_screen.dart';

///SignUp ekranının widgetları
base mixin SignUpScreenWidgets on BaseState<SignUpScreenWiew, SignUpCubit> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  ///Şifrelerin doğruluğuna bakar
  bool validateFields(String password, String confirmPassword, String email) {
    if (password.isEmpty || confirmPassword.isEmpty || email.isEmpty) {
      DialogManager.showSnackBar(
        context,
        message: l10n.emptyFields,
        color: Colors.red,
      );

      return false;
    }

    if (!email.contains('@')) {
      DialogManager.showSnackBar(
        context,
        message: l10n.invalidEmail,
        color: Colors.red,
      );

      return false;
    }

    if (password != confirmPassword) {
      DialogManager.showSnackBar(
        context,
        message: l10n.passwordsDoNotMatch,
        color: Colors.red,
      );

      return false;
    }

    if (password.length < 6) {
      DialogManager.showSnackBar(
        context,
        message: l10n.passwordLength,
        color: Colors.red,
      );

      return false;
    }
    return true;
  }

  AppBar _appBar() => AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      );
  Widget _body() => Padding(
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
                  l10n.signUp,
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
                    color: theme.colorScheme.primary,
                    controller: _emailController,
                    labelText: l10n.eMail,
                    icon: Icon(
                      Icons.email,
                      color: theme.colorScheme.primary,
                    ),
                  ),
                  BlocBuilder<SignUpCubit, SignUpState>(
                    builder: (context, state) => MusicifyTextField.obscure(
                      color: theme.colorScheme.primary,
                      controller: _passwordController,
                      changeObscure: () => getCubit.changeObscure(),
                      isObsecure: state.isObscure,
                      labelText: l10n.password,
                      icon: Icon(
                        Icons.key,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ),
                  BlocBuilder<SignUpCubit, SignUpState>(
                    builder: (context, state) => MusicifyTextField.obscure(
                      color: theme.colorScheme.primary,
                      controller: _confirmPasswordController,
                      changeObscure: () => getCubit.changeObscure(),
                      isObsecure: state.isObscure,
                      labelText: l10n.confirmPassword,
                      icon: Icon(
                        Icons.key,
                        color: theme.colorScheme.primary,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {
                        final isConfirm = validateFields(
                          _passwordController.text,
                          _confirmPasswordController.text,
                          _emailController.text,
                        );
                        if (isConfirm) {
                          DialogManager.showSnackBar(
                            context,
                            message: l10n.registerSuccess,
                            color: Colors.green,
                          );
                          DependencyInjector.read<FirebaseAuthManager>()
                              .signUpWithEmailAndPassword(
                            _emailController.text,
                            _passwordController.text,
                          );
                          AppRouter.push(AppRoutes.spotifyAuth);
                        }
                      },
                      child: Text(l10n.signUp),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
}
