import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:yalla_benna/core/assets_manager.dart';

import '../../core/colors_manager.dart';

class MovieCardWithDetails extends StatelessWidget {
  const MovieCardWithDetails({
    super.key,
    required this.isFav,
  });

  final bool isFav;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 8),
          child: Container(
            color: ColorsManager.bgCardMovie,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: InkWell(
                    child: Container(
                      width: 100,
                      height: double.infinity,
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/d09cbedd39d8c74b576632e50de5c3d3.png',
                          ),
                          fit: BoxFit.fill,
                        ),
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(8.0)),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: SvgPicture.asset(
                        'assets/images/star-2.svg',
                        width: 15,
                        height: 15,
                      ),
                    ),
                    const Text(
                      '7.7',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'data',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'data',
                    style: TextStyle(color: Colors.white30),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          child: SvgPicture.asset(
            isFav ? AssetsManager.isFavTrue : AssetsManager.isFavFalse,
          ),
        ),
      ],
    );
  }
}
