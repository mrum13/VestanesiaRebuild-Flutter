import 'dart:async';

import 'package:flutter/material.dart';
import 'package:vestanesia/shared/theme.dart';

class SplashSpage extends StatefulWidget {
  const SplashSpage({Key? key}) : super(key: key);

  @override
  State<SplashSpage> createState() => _SplashSpageState();
}

class _SplashSpageState extends State<SplashSpage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      // if (user == null) {
      //   Navigator.pushNamedAndRemoveUntil(
      //       context, '/get-started', (route) => false);
      // } else {
      //   context.read<AuthCubit>().getCurrentUser(user.uid);
      //   Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
      // }
      Navigator.pushNamedAndRemoveUntil(context, 'login', (route) => false);
    });
    super.initState();
  }

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
