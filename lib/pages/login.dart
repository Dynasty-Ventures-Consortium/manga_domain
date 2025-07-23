import 'package:flutter/material.dart';
import 'package:manga_domain/pages/temp_page.dart';
import 'package:manga_domain/services/theme.dart';
import 'package:manga_domain/widgets/custom_checkbox.dart';
import 'package:manga_domain/widgets/input_box.dart';
import 'package:manga_domain/widgets/maroon_button.dart';
import 'package:manga_domain/widgets/red_button.dart';
import 'package:manga_domain/widgets/underlined_button.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Image.asset("assets/images/login.png"),
          SizedBox(height: 10.0),
          const Text(
            "Welcome Back",
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  InputBox(title: "Email"),
                  SizedBox(height: 20.0),
                  InputBox(title: "Password"),
                  CustomCheckbox(),
                  UnderlinedButton(title: "Forgot Password?"),
                  RedButton(title: "Login", width: 400, height: 45, goToPage: TempPage(),),
                  SizedBox(height: 10.0),
                  const Text(
                    "Or sign in with",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: textSubColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaroonButton(title: "Google", width: 150, height: 40),
                      MaroonButton(title: "Facebook", width: 150, height: 40),
                    ],
                  ),
                  UnderlinedButton(title: "Don't have an account? Sign Up"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
