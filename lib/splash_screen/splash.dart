import 'package:flutter/material.dart';
import 'package:yalla_benna/core/assets_manager.dart';
import 'package:yalla_benna/core/colors_manager.dart';

import '../HomeScreen/my_home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            Image.asset(
              AssetsManager.logoSplash,
              width: MediaQuery.of(context).size.width *
                  0.5, // Adjust the size as needed
            ),
            const Spacer(),
            Image.asset(
              AssetsManager.titleSplash,
              width: MediaQuery.of(context).size.width *
                  0.5, // Adjust the size as needed
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
