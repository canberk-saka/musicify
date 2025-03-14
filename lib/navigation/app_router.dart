import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:musicify/constants/static_variables.dart';
import 'package:musicify/data/models/track_top_item.dart';
import 'package:musicify/data/models/user_top_item.dart';
import 'package:musicify/navigation/app_routes.dart';
import 'package:musicify/screens/artists_list/view/artist_list.dart';
import 'package:musicify/screens/auth/view/spotify_auth.dart';
import 'package:musicify/screens/home/view/home_screen.dart';
import 'package:musicify/screens/login/view/login_screen.dart';
import 'package:musicify/screens/sign_up/view/sign_up_screen.dart';
import 'package:musicify/screens/tracks_list/view/tracks_list.dart';
import 'package:musicify/screens/wrap/view/wrap_screen.dart';

///Uygulamanın route işlemleri
abstract final class AppRouter {
  ///Contex
  static final navigatorKey = GlobalKey<NavigatorState>();

  ///router
  static final router = GoRouter(
    debugLogDiagnostics: true,
    initialLocation: AppRoutes.login.path,
    navigatorKey: navigatorKey,
    redirect: (context, state) {
      if (state.uri.host == 'spotify_auth') {
        StaticVariables.code = state.uri.queryParameters['code'] ?? '';
        return AppRoutes.home.path;
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
        path: AppRoutes.signUp.path,
        name: AppRoutes.signUp.name,
        pageBuilder: (context, state) => const MaterialPage(child: SignUpScreen()),
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
      GoRoute(
        path: AppRoutes.wrap.path,
        name: AppRoutes.wrap.name,
        pageBuilder: (context, state) => const MaterialPage(child: WrapScreen()),
      ),
      GoRoute(
        path: AppRoutes.tracksList.path,
        name: AppRoutes.tracksList.name,
        pageBuilder: (context, state) {
          final tracksData = state.extra as TrackTopItem?;
          if (tracksData == null) {
            return const MaterialPage(child: Scaffold(body: Center(child: Text('Hata: Veri bulunamadı'))));
          }
          return MaterialPage(child: TracksList(tracksTopItem: tracksData));
        },
      ),
      GoRoute(
        path: AppRoutes.artistsList.path,
        name: AppRoutes.artistsList.name,
        pageBuilder: (context, state) {
          final artistData = state.extra as UserTopItem?;
          if (artistData == null) {
            return const MaterialPage(child: Scaffold(body: Center(child: Text('Hata: Veri bulunamadı'))));
          }
          return MaterialPage(child: ArtistList(artistTopItemInfo: artistData));
        },
      ),
    ],
  );

  ///Sayfaya geçme metodu
  static Future<void> push(AppRoutes path) async => navigatorKey.currentContext?.pushNamed(path.name);

  ///Sayfayı parametre ile geçme metodu
  static Future<void> pushWithParams(AppRoutes path, Object params) async => navigatorKey.currentContext?.pushNamed(path.name, extra: params);

  ///Sayfadan çıkma metodu
  static Future<void> pop() async => navigatorKey.currentState?.pop();

  ///Context çağırma metodu
  static BuildContext? get getContext => navigatorKey.currentContext;
}
