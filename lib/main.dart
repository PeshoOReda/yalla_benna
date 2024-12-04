import 'package:flutter/material.dart';
import 'package:yalla_benna/HomeScreen/movie_profile/movie_profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PeshoO Reda',
      home: MovieProfile(), // Set the splash screen as the home
    );
  }
}
