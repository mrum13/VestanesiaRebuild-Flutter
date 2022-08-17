import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailLogin = TextEditingController();
    TextEditingController _passwordLogin = TextEditingController();
    bool _obscureText = true;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: <Widget>[
              // _logoLogin(),
              // _authSubtitle(),
              // _helperEmail(),
              // _inputEmailLogin(),
              // _helperPass(),
              // _inputPassLogin(),
              // _textForgotPass(),
              // _buttonLogin(),
              // _dividerLogin(),
              // _googlefbSignIn(),
              // _regisText(),
            ],
          ),
        ),
      ),
    );
  }
}
