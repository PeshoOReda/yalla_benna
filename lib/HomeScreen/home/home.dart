import 'package:flutter/material.dart';
import 'package:yalla_benna/HomeScreen/home/head_home.dart';
import 'package:yalla_benna/HomeScreen/home/list_movie.dart';
import 'package:yalla_benna/core/colors_manager.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.bgColor,
      body: Column(
        children: [
          const SizedBox(
            height: 22,
          ),
          const HeadHome(
            isFav: true,
          ),
          listMovies('Top Movies'),
          const SizedBox(
            height: 30,
          ),
          listMoviesWithDetails('Recommended'),
        ],
      ),
    );
  }
}
