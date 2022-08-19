import 'package:flutter/material.dart';
import 'package:vestanesia/shared/theme.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function() onTap;

  const PrimaryButton({Key? key, required this.text, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: whiteTextStyle.copyWith(
                fontSize: 14, fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
