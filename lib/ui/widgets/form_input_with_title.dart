import 'package:flutter/material.dart';
import 'package:vestanesia/shared/theme.dart';
import 'package:vestanesia/ui/widgets/form_input.dart';

class FormInputTitle extends StatelessWidget {
  final String title;
  final String hintText;
  final bool obscureText;
  final TextEditingController controller;
  final int maxLines;

  const FormInputTitle({
    Key? key,
    required this.title,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style:
              greyTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 4,
        ),
        FormInput(
            maxLines: maxLines,
            hintText: hintText,
            obscureText: obscureText,
            controller: controller)
      ],
    );
  }
}
