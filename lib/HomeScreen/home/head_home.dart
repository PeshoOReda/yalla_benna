import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/assets_manager.dart';

class HeadHome extends StatelessWidget {
  const HeadHome({super.key, required this.isFav});
  final bool isFav;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 289,
          color: Colors.transparent,
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 199,
                    child: Image.asset(
                      'assets/images/Image.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(133, 8, 100, 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          'dore',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '2019 PG 2h',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 130, 0, 0),
                  child: Container(
                    width: 97,
                    height: 128,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/Image1.png',
                          fit: BoxFit.fill,
                        ),
                        SvgPicture.asset(
                          isFav
                              ? AssetsManager.isFavTrue
                              : AssetsManager.isFavFalse,
                        ),
                      ],
                    ),
                  ),
                )
              ]),
            ],
          ),
        ),
      ],
    );
  }
}
