import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yalla_benna/core/assets_manager.dart';

import '../../core/colors_manager.dart';
import '../home/list_movie.dart';
import '../home/movie_card.dart';
import '../home/movie_card_with_details.dart';

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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 244,
            width: double.infinity,
            color: CupertinoColors.activeBlue,
            child: Image.asset(
              'assets/images/Image.png',
              fit: BoxFit.fill,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('data', style: TextStyle(color: Colors.white)),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('data', style: TextStyle(color: Colors.white)),
          ),
          const MovieCard(
            isFav: true,
          ),
          Row(
            children: [
              const Expanded(
                child: MovieCardWithDetails(
                  isFav: false,
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset(
                          AssetsManager.star,
                          width: 15,
                          height: 15,
                        ),
                        const Text(
                          '7.7',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          listMoviesWithDetails('More Like This'),
        ],
      ),
    );
  }
}
