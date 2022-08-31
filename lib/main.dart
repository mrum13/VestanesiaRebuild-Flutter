import 'package:flutter/material.dart';
import 'package:vestanesia/cubit/page_cubit.dart';
import 'package:vestanesia/cubit/tab_program_cubit.dart';
import 'package:vestanesia/ui/pages/detail_program_page.dart';
import 'package:vestanesia/ui/pages/forgot_pass_page.dart';
import 'package:vestanesia/ui/pages/home_page.dart';
import 'package:vestanesia/ui/pages/lengkapi_data_1.dart';
import 'package:vestanesia/ui/pages/lengkapi_data_2.dart';
import 'package:vestanesia/ui/pages/login_page.dart';
import 'package:vestanesia/ui/pages/main_page.dart';
import 'package:vestanesia/ui/pages/more_page.dart';
import 'package:vestanesia/ui/pages/notification_page.dart';
import 'package:vestanesia/ui/pages/program_page.dart';
import 'package:vestanesia/ui/pages/register_page.dart';
import 'package:vestanesia/ui/pages/splash_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: ((context) => PageCubit()),
        ),
        BlocProvider(
          create: ((context) => TabProgramCubit()),
        )
      ],
      child: MaterialApp(
        routes: {
          '/': (context) => SplashSpage(),
          'login': (context) => LoginPage(),
          'register': (context) => RegisterPage(),
          'forgot-pass': (context) => ForgotPassPage(),
          'lengkapi-data1': (context) => LengkapiData1Page(),
          'lengkapi-data2': (context) => LengkapiData2Page(),
          'main': (context) => MainPage(),
          'home': (context) => HomePage(),
          'program': (context) => ProgramPage(),
          'notification': (context) => NotificationPage(),
          'more': (context) => MorePage(),
          'detail-program': (context) => DetailProgramPage(),
        },
      ),
    );
  }
}
