import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vestanesia/shared/theme.dart';
import 'package:vestanesia/ui/widgets/form_input_with_title.dart';
import 'package:vestanesia/ui/widgets/other_account_button.dart';
import 'package:vestanesia/ui/widgets/primary_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
                "Silahkan masuk akun untuk mengetahui perkembangan investasi kamu.",
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
                height: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, "forgot-pass"),
                    child: Text(
                      "Lupa password?",
                      style: primaryTextStyle.copyWith(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              PrimaryButton(
                text: "Masuk Akun",
                onTap: () {
                  Navigator.pushNamed(context, "lengkapi-data1");
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Atau masuk akun dengan",
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
                    "Belum punya akun?",
                    style: secondBlackTextStyle.copyWith(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'register'),
                    child: Text(
                      "Daftar di sini",
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
