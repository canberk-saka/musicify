import 'package:flutter/material.dart';

///{@template textField}
///Musicify textField widget'ı
///{@endtemplate}
class MusicifyTextField extends StatefulWidget {
  ///TextField Widget'ı
  const MusicifyTextField({
    required this.labelText,
    this.isObsecure = false,
    super.key,
    this.hintText,
    this.icon,
  });

  ///TextField başlığı
  final String labelText;

  ///TextField hintText'i
  final String? hintText;

  ///TextField icon'u
  final Icon? icon;

  ///Şifre mi
  final bool? isObsecure;

  @override
  State<MusicifyTextField> createState() => _MusicifyTextFieldState();
}

class _MusicifyTextFieldState extends State<MusicifyTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.isObsecure!,
      decoration: InputDecoration(
        prefixIcon: widget.icon,
        labelText: widget.labelText,
        hintText: widget.hintText,
      ),
    );
  }
}
