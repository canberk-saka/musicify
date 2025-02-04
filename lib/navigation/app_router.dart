import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:musicify/navigation/app_routes.dart';
import 'package:musicify/screens/auth/view/spotify_auth.dart';
import 'package:musicify/screens/home/view/home_screen.dart';
import 'package:musicify/screens/login/view/login_screen.dart';

///Uygulamanın route işlemleri
abstract final class AppRouter {
  ///Contex
  static final navigatorKey = GlobalKey<NavigatorState>();

  ///router
  static final router = GoRouter(
    initialLocation: AppRoutes.login.path,
    navigatorKey: navigatorKey,
    redirect: (context, state) {
      if (state.uri.host == 'spotify_auth') {
        log(state.uri.queryParameters['code'] ?? '');
      }
      return null;
    },
    routes: [
      GoRoute(
        path: AppRoutes.login.path,
        name: AppRoutes.login.name,
        pageBuilder: (context, state) => const MaterialPage(child: LoginScreen()),
      ),
      GoRoute(
        path: AppRoutes.home.path,
        name: AppRoutes.home.name,
        pageBuilder: (context, state) => const MaterialPage(child: HomeScreen()),
      ),
      GoRoute(
        path: AppRoutes.spotifyAuth.path,
        name: AppRoutes.spotifyAuth.name,
        pageBuilder: (context, state) => const MaterialPage(child: SpotifyAuthScreen()),
      ),
    ],
  );

  ///Sayfaya geçme metodu
  static Future<void> push(AppRoutes path) async => navigatorKey.currentContext?.pushNamed(path.name);
}
