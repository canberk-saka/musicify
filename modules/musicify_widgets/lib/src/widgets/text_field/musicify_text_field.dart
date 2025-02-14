import 'package:flutter/material.dart';

///{@template textField}
///Musicify textField widget'ı
///{@endtemplate}
class MusicifyTextField extends StatefulWidget {
  ///TextField Widget'ı
  const MusicifyTextField({
    required this.labelText,
    required this.controller,
    super.key,
    this.hintText,
    this.icon,
    this.color,
  })  : isObsecure = false,
        changeObscure = null;

  /// ObscureText olan TextField Widget'ı
  const MusicifyTextField.obscure({
    required this.labelText,
    required this.isObsecure,
    required this.changeObscure,
    required this.controller,
    super.key,
    this.hintText,
    this.icon,
    this.color,
  });

  ///TextField başlığı
  final String labelText;

  ///TextField hintText'i
  final String? hintText;

  ///TextField icon'u
  final Icon? icon;

  ///Şifre mi
  final bool? isObsecure;

  ///TextField rengi
  final Color? color;

  ///Şifre gizleme fonksiyonu
  final void Function()? changeObscure;

  ///TextField controller'ı
  final TextEditingController controller;

  @override
  State<MusicifyTextField> createState() => _MusicifyTextFieldState();
}

class _MusicifyTextFieldState extends State<MusicifyTextField> {
  @override
  Widget build(BuildContext context) => TextFormField(
        controller: widget.controller,
        obscureText: widget.isObsecure!,
        decoration: InputDecoration(
          prefixIcon: widget.icon,
          suffixIcon: widget.changeObscure != null
              ? IconButton(
                  onPressed: widget.changeObscure,
                  icon: Icon(
                    color: widget.color,
                    widget.isObsecure! ? Icons.visibility : Icons.visibility_off,
                  ),
                )
              : null,
          labelText: widget.labelText,
          hintText: widget.hintText,
        ),
      );
}
