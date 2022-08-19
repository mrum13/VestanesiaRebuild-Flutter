import 'package:flutter/material.dart';
import 'package:vestanesia/shared/theme.dart';

class Header1 extends StatelessWidget {
  final String title;

  const Header1({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: kWhiteColor, boxShadow: const [
        BoxShadow(
            spreadRadius: 0.1,
            blurRadius: 8,
            offset: Offset(0, 3),
            color: Color.fromRGBO(0, 0, 0, 0.16))
      ]),
      padding: const EdgeInsets.all(16),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: blackTextStyle.copyWith(
                    fontSize: 18, fontWeight: FontWeight.w700),
              )
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {},
              child: Image.asset(
                "assets/icon_back.png",
                height: 24,
                width: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
