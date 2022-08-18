import 'package:flutter/material.dart';
import 'package:vestanesia/shared/theme.dart';
import 'package:vestanesia/widgets/form_input_with_title.dart';
import 'package:vestanesia/widgets/other_account_button.dart';
import 'package:vestanesia/widgets/primary_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
          color: kWhiteColor,
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
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
                "Daftar akun dan mulai maskimalkan investasimu dengan Vestanesia.",
                style: blackTextStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              FormInputTitle(
                  title: "Email",
                  controller: emailController,
                  hintText: "Masukkan Email",
                  obscureText: false),
              const SizedBox(
                height: 20,
              ),
              FormInputTitle(
                  title: "Password",
                  controller: passwordController,
                  hintText: "Masukkan Password",
                  obscureText: true),
              const SizedBox(
                height: 20,
              ),
              PrimaryButton(
                text: "Masuk Akun",
                onTap: () {},
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Atau daftar dengan",
                style: greyTextStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 20,
              ),
              OtherAccountButton(),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Sudah punya akun?",
                    style: secondBlackTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Text(
                      "Login di sini",
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
