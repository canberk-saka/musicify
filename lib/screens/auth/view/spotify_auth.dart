import 'dart:developer';
import 'dart:math' hide log;

import 'package:flutter/material.dart';
import 'package:musicify/env/env.dart';
import 'package:url_launcher/url_launcher_string.dart';

/// {@template spotifyAuthScreen}
/// Spotify Auth Ekranı
/// {@endtemplate}

class SpotifyAuthScreen extends StatefulWidget {
  /// {macro spotifyAuthScreen}
  const SpotifyAuthScreen({super.key});

  @override
  State<SpotifyAuthScreen> createState() => _SpotifyAuthScreenState();
}

class _SpotifyAuthScreenState extends State<SpotifyAuthScreen> {
  final String clientId = Env.clientId;
  final String redirectUri = Env.redirectUri;
  final String scope = 'user-read-private user-read-email';

  // Rastgele string üreten fonksiyon
  String generateRandomString(int length) {
    const chars = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    final random = Random();
    return List.generate(length, (index) => chars[random.nextInt(chars.length)]).join();
  }

  Future<void> _launchSpotifyAuth() async {
    final state = generateRandomString(16);

    final url = 'https://accounts.spotify.com/authorize?response_type=code&client_id=$clientId&scope=$scope&redirect_uri=$redirectUri&state=$state';
    log(url);
    await launchUrlString(
      url,
      mode: LaunchMode.inAppBrowserView,
    );
    // URL'yi aç
    // if (await canLaunchUrl(launchUri)) {
    //   await launchUrl(launchUri);
    // } else($e) {
    //   throw 'Spotify Auth URL could not be launched. $e'; // Eğer açılmadıysa hata ver
    // };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spotify Authentication'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _launchSpotifyAuth, // Spotify auth işlemini başlat
          child: const Text('Login with Spotify'),
        ),
      ),
    );
  }
}
