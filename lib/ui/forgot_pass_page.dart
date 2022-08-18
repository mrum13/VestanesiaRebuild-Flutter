import 'package:flutter/material.dart';
import 'package:vestanesia/shared/theme.dart';
import 'package:vestanesia/widgets/form_input_with_title.dart';
import 'package:vestanesia/widgets/primary_button.dart';

class ForgotPassPage extends StatelessWidget {
  const ForgotPassPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          backgroundColor: kWhiteColor,
          body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(
                  height: 43,
                ),
                Image.asset(
                  "assets/logo_horizontal.png",
                  height: 36,
                  width: 145,
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  "Anda dapat menyetel ulang melalui email. Pastikan akun email anda dapat diakses.",
                  textAlign: TextAlign.center,
                  style: blackTextStyle.copyWith(
                      fontSize: 14, fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 50,
                ),
                FormInputTitle(
                    title: "Email",
                    controller: emailController,
                    hintText: "Masukkan Email",
                    obscureText: false),
                const SizedBox(
                  height: 20,
                ),
                PrimaryButton(
                  text: "Kirim",
                  onTap: () {},
                ),
              ],
            ),
          )),
    );
  }
}
