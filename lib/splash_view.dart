import 'package:flutter/material.dart';
import 'package:multiwebview/constant.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: splashBackgroundColor,
      body: Center(
          child: SizedBox(
        height: 120,
        child: Image.asset(
          splashScreenAssetPath,
          scale: 4,
        ),
      )),
    );
  }
}
