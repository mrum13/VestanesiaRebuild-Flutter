import 'package:flutter/material.dart';
import 'package:vestanesia/ui/forgot_pass_page.dart';
import 'package:vestanesia/ui/login_page.dart';
import 'package:vestanesia/ui/register_page.dart';
import 'package:vestanesia/ui/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => SplashSpage(),
        'login': (context) => LoginPage(),
        'register': (context) => RegisterPage(),
        'forgot-pass': (context) => ForgotPassPage(),
      },
    );
  }
}
