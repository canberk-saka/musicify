import 'dart:developer';
import 'dart:math' hide log;

import 'package:flutter/material.dart';
import 'package:musicify/env/env.dart';
import 'package:musicify/l10n/l10n.dart';
import 'package:url_launcher/url_launcher_string.dart';

part '../../auth/view/widgets/spotify_auth_screen_widgets.dart';

/// {@template spotifyAuthScreen}
/// Spotify Auth Ekranı
/// {@endtemplate}

final class SpotifyAuthScreen extends StatefulWidget {
  /// {macro spotifyAuthScreen}
  const SpotifyAuthScreen({super.key});

  @override
  State<SpotifyAuthScreen> createState() => _SpotifyAuthScreenState();
}

final class _SpotifyAuthScreenState extends State<SpotifyAuthScreen> with SpotifyAuthScreenWidgets {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _body(),
    );
  }
}
