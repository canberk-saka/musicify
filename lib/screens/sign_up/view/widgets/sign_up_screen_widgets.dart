part of '../../view/sign_up_screen.dart';

///SignUp ekranının widgetları
base mixin SignUpScreenWidgets on BaseState<SignUpScreenWiew, SignUpCubit> {
  AppBar _appBar() => AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      );
  Widget _body() => Padding(
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
                    labelText: l10n.eMail,
                    icon: const Icon(Icons.email),
                  ),
                  BlocBuilder<SignUpCubit, SignUpState>(
                    builder: (context, state) => MusicifyTextField.obscure(
                      changeObscure: () => read.changeObscure(),
                      isObsecure: state.isObscure,
                      labelText: l10n.password,
                      icon: const Icon(Icons.key),
                    ),
                  ),
                  BlocBuilder<SignUpCubit, SignUpState>(
                    builder: (context, state) => MusicifyTextField.obscure(
                      changeObscure: () => read.changeObscure(),
                      isObsecure: state.isObscure,
                      labelText: l10n.confirmPassword,
                      icon: const Icon(Icons.key),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {},
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
