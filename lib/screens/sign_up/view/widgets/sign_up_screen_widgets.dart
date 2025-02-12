part of '../../view/sign_up_screen.dart';

///SignUp ekranının widgetları
base mixin SignUpScreenWidgets on BaseState<SignUpScreenWiew, SignUpCubit> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  ///Şifrelerin doğruluğuna bakar
  bool confirmPassword(String password, String confirmPassword) {
    log('password: $password, confirmPassword: $confirmPassword');
    if (password.isEmpty || confirmPassword.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Parola ya da email alanları boş olamaz!'),
          backgroundColor: Colors.yellow,
        ),
      );
      return false;
    }

    if (password != confirmPassword) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Şifreler eşleşmiyor'),
          backgroundColor: Colors.red,
        ),
      );
      return false;
    }

    if (password.length < 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Şifre en az 6 karakter olmalıdır'),
          backgroundColor: Colors.red,
        ),
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
                        final isConfirm = confirmPassword(_passwordController.text, _confirmPasswordController.text);
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
