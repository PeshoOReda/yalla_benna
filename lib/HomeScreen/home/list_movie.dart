import 'package:flutter/material.dart';
import 'package:yalla_benna/HomeScreen/home/movie_card.dart';
import 'package:yalla_benna/HomeScreen/home/movie_card_with_details.dart';

import '../../core/colors_manager.dart';

Widget listMovies(String title) {
  return Container(
    color: ColorsManager.bgItems,
    height: 222,
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
            child: Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 8),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const MovieCard(
                  isFav: true,
                );
              },
            ),
          ),
        ],
      ),
    ),
  );
}

Widget listMoviesWithDetails(String title) {
  return Container(
    color: ColorsManager.bgItems,
    height: 222,
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
            child: Text(
              title,
              style: const TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 8),
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const MovieCardWithDetails(
                  isFav: false,
                );
              },
            ),
          ),
        ],
      ),
    ),
  );
}
