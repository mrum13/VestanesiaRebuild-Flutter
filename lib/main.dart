import 'package:flutter/material.dart';
import 'package:vestanesia/ui/pages/forgot_pass_page.dart';
import 'package:vestanesia/ui/pages/lengkapi_data_1.dart';
import 'package:vestanesia/ui/pages/login_page.dart';
import 'package:vestanesia/ui/pages/register_page.dart';
import 'package:vestanesia/ui/pages/splash_page.dart';

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
        'lengkapi-data1': (context) => LengkapiData1Page(),
      },
    );
  }
}
