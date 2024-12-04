import 'package:flutter/material.dart';

import '../../core/colors_manager.dart';
import '../home/list_movie.dart';
import '../home/movie_card.dart';

class MovieProfile extends StatelessWidget {
  const MovieProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorsManager.bgAppBar,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_outlined,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'dora',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: ColorsManager.bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 244,
            width: double.infinity,
            child: Image.asset(
              'assets/images/Image.png',
              fit: BoxFit.fill,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'data',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'data',
                  style: TextStyle(
                    color: Colors.white30,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              height: 150,
              child: MovieCard(isFav: false),
            ),
          ),
          listMoviesWithDetails('More Like This'),
        ],
      ),
    );
  }
}

// const Padding(
// padding: EdgeInsets.all(8.0),
// child: Text('data', style: TextStyle(color: Colors.white)),
// ),
// const Padding(
// padding: EdgeInsets.all(8.0),
// child: Text('data', style: TextStyle(color: Colors.white)),
// ),
// Row(
// children: [
// const Expanded(
// child: MovieCard(
// isFav: false,
// ),
// ),
// Expanded(
// child: Column(
// children: [
// const Padding(
// padding: EdgeInsets.all(8.0),
// child: Text(
// 'data',
// style: TextStyle(color: Colors.white),
// ),
// ),
// const Padding(
// padding: EdgeInsets.all(8.0),
// child: Text(
// 'data',
// style: TextStyle(color: Colors.white),
// ),
// ),
// Row(
// children: [
// SvgPicture.asset(
// AssetsManager.star,
// width: 15,
// height: 15,
// ),
// const Text(
// '7.7',
// style: TextStyle(color: Colors.white),
// ),
// ],
// ),
// ],
// ),
// ),
// ],
// ),
