import 'package:flutter/material.dart';
import 'package:manga_domain/services/theme.dart';
import 'package:manga_domain/widgets/custom_checkbox.dart';
import 'package:manga_domain/widgets/input_box.dart';
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
