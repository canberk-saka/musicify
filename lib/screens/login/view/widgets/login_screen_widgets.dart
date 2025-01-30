part of '../../view/login_screen.dart';

///Login ekranının widgetları
base mixin LoginScreenWidgets on State<LoginScreen> {
  ///Login ekranı appBarı'ı
  AppBar appBar() {
    return AppBar(
      title: Text(context.l10n.appName),
    );
  }

  ///Login ekranı body'si
  Form body() {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        spacing: 15,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: context.l10n.eMail),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: context.l10n.password),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(context.l10n.login),
            ),
          ),
        ],
      ),
    );
  }
}
