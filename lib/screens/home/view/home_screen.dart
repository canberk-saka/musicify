import 'package:flutter/material.dart';

///{@template homeScreen}
///Ana Sayfa Ekranı
///{@endtemplate}

class HomeScreen extends StatefulWidget {
  ///{macro homeScreen}
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('Home Screen'),
    );
  }
}
