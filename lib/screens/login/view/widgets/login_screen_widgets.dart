part of '../../view/login_screen.dart';

///Login ekranının widgetları
base mixin LoginScreenWidgets on State<LoginScreen> {
  ///Login ekranı appBarı'ı
  AppBar appBar() {
    return AppBar();
  }

  ///Login ekranı body'si
  Padding body() {
    return Padding(
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
                context.l10n.login,
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
                  labelText: context.l10n.eMail,
                  icon: const Icon(Icons.email),
                ),
                MusicifyTextField(
                  labelText: context.l10n.password,
                  icon: const Icon(Icons.key),
                  isObsecure: true,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: ElevatedButton(
                    onPressed: () {
                      AppRouter.push(AppRoutes.spotifyAuth);
                    },
                    child: Text(context.l10n.login),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  ///Giriş ekranındaki textField widget'ı
  TextFormField textFieldWidget(String text, Icon icon) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: text,
        icon: icon,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
      ),
    );
  }
}
