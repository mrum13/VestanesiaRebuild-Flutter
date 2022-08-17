import 'package:flutter/material.dart';
import 'package:vestanesia/shared/theme.dart';

class OtherAccountButton extends StatelessWidget {
  const OtherAccountButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: kRedColor)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icon_google.png",
                height: 16,
                width: 16,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                "Google",
                style: redTextStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w600),
              )
            ],
          ),
        )),
        const SizedBox(
          width: 22,
        ),
        Expanded(
            child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: kFbColor)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icon_fb.png",
                height: 16,
                width: 16,
              ),
              const SizedBox(
                width: 12,
              ),
              Text(
                "Facebook",
                style: fbTextStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w600),
              )
            ],
          ),
        )),
      ],
    );
  }
}
