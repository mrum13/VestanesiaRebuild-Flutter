import 'package:flutter/material.dart';
import 'package:vestanesia/shared/theme.dart';

class SplashSpage extends StatelessWidget {
  const SplashSpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Center(
        child: Image.asset(
          "assets/logo.png",
          width: 105,
          height: 90,
        ),
      ),
    );
  }
}
