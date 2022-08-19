import 'package:flutter/material.dart';
import 'package:vestanesia/shared/theme.dart';

class FormInput extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final int maxLines;

  const FormInput({
    Key? key,
    required this.hintText,
    required this.obscureText,
    required this.controller,
    required this.maxLines,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      controller: controller,
      obscureText: obscureText,
      cursorColor: kBlackColor,
      style: blackTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
      decoration: InputDecoration(
          filled: true,
          fillColor: kThirdGreyColor,
          isDense: true,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 13, horizontal: 16),
          hintText: hintText,
          hintStyle:
              greyTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w400),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide(color: kThirdGreyColor)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(9),
              borderSide: BorderSide(color: kPrimaryColor))),
    );
  }
}
