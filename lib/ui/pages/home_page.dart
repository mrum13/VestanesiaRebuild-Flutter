import 'package:flutter/material.dart';
import 'package:vestanesia/shared/theme.dart';
import 'package:vestanesia/ui/widgets/card_program.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 24,
        ),

        //Noted : Home Header
        Container(
          decoration: BoxDecoration(color: kWhiteColor, boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 6,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ]),
          height: 56,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/icon_logo_horizontal.png",
                height: 36,
                width: 145,
              ),
              Image.asset(
                "assets/icon_chat.png",
                height: 24,
                width: 24,
              )
            ],
          ),
        ),

        const SizedBox(
          height: 16,
        ),
        CardProgram(),
        const SizedBox(
          height: 16,
        ),
        CardProgram(),
        const SizedBox(
          height: 16,
        ),
        CardProgram()
      ]),
    ));
  }
}
