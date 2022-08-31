import 'package:flutter/material.dart';
import 'package:vestanesia/cubit/page_cubit.dart';
import 'package:vestanesia/shared/theme.dart';
import 'package:vestanesia/ui/pages/home_page.dart';
import 'package:vestanesia/ui/pages/more_page.dart';
import 'package:vestanesia/ui/pages/notification_page.dart';
import 'package:vestanesia/ui/pages/program_page.dart';
import 'package:vestanesia/ui/widgets/bottom_navigation_item.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return ProgramPage();
        case 2:
          return NotificationPage();
        case 3:
          return MorePage();
        default:
          return HomePage();
      }
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, state) {
        return Scaffold(
          body: Column(
            children: [
              Expanded(child: buildContent(state)),
              Container(
                width: double.infinity,
                height: 60,
                color: kWhiteColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    BottomNavigationItem(
                        icon0: "assets/icon_home_inactive.png",
                        icon1: "assets/icon_home_active.png",
                        index: 0,
                        text: "Beranda"),
                    BottomNavigationItem(
                      icon0: "assets/icon_program_inactive.png",
                      icon1: "assets/icon_program_active.png",
                      text: "Program",
                      index: 1,
                    ),
                    BottomNavigationItem(
                      icon0: "assets/icon_notification_inactive.png",
                      icon1: "assets/icon_notification_active.png",
                      text: "Notifikasi",
                      index: 2,
                    ),
                    BottomNavigationItem(
                      icon0: "assets/icon_more_inactive.png",
                      icon1: "assets/icon_more_active.png",
                      text: "Lainnya",
                      index: 3,
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
