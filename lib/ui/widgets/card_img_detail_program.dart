import 'package:flutter/material.dart';

class CardImgDetailProgram extends StatelessWidget {
  const CardImgDetailProgram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image:
              const DecorationImage(image: AssetImage("assets/pisang2.png"))),
    );
  }
}
