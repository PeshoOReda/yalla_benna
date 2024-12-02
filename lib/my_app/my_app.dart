import 'package:flutter/material.dart';
import 'package:yalla_benna/HomeScreen/movie_profile/movie_profile.dart';

import '../HomeScreen/home/home.dart';
import '../core/routes_manager.dart';
import '../splash_screen/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        RoutesManager.splashScreen: (context) => const SplashScreen(),
        RoutesManager.homeScreen: (context) => const Home(),
        RoutesManager.movieProfile: (context) => const MovieProfile(),
      },
      initialRoute: RoutesManager.movieProfile,
    );
  }
}
