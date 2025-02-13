part of '../../view/sign_up_screen.dart';

///SignUp ekranının widgetları
base mixin SignUpScreenWidgets on BaseState<SignUpScreenWiew, SignUpCubit> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  ///Şifrelerin doğruluğuna bakar
  bool validateFields(String password, String confirmPassword, String email) {
    if (!email.contains('@')) {
      DialogManager.showSnackBar(l10n.invalidEmail, Colors.red);

      return false;
    }
    if (password.isEmpty || confirmPassword.isEmpty || email.isEmpty) {
      DialogManager.showSnackBar(l10n.emptyFields, Colors.red);

      return false;
    }

    if (password != confirmPassword) {
      DialogManager.showSnackBar(l10n.passwordsDoNotMatch, Colors.red);

      return false;
    }

    if (password.length < 6) {
      DialogManager.showSnackBar(l10n.passwordLength, Colors.red);

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
                  BlocBuilder<SignUpCubit, SignUpState>(
                    builder: (context, state) => MusicifyTextField.obscure(
                      controller: _passwordController,
                      changeObscure: () => read.changeObscure(),
                      isObsecure: state.isObscure,
                      labelText: l10n.password,
                      icon: const Icon(Icons.key),
                    ),
                  ),
                  BlocBuilder<SignUpCubit, SignUpState>(
                    builder: (context, state) => MusicifyTextField.obscure(
                      controller: _confirmPasswordController,
                      changeObscure: () => read.changeObscure(),
                      isObsecure: state.isObscure,
                      labelText: l10n.confirmPassword,
                      icon: const Icon(Icons.key),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {
                        final isConfirm = validateFields(_passwordController.text, _confirmPasswordController.text, _emailController.text);
                        if (isConfirm) {
                          DependencyInjector.read<FirebaseAuthManager>().signUpWithEmailAndPassword(_emailController.text, _passwordController.text);
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
