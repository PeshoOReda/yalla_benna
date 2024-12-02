import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/assets_manager.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.isFav,
  });
  final bool isFav;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Container(
            width: 100,
            height: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage(
                  'assets/images/d09cbedd39d8c74b576632e50de5c3d3.png',
                ),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(8.0),
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
