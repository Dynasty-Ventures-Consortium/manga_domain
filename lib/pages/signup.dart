import 'package:flutter/material.dart';
import 'package:manga_domain/pages/login.dart';
import 'package:manga_domain/services/theme.dart';
import 'package:manga_domain/widgets/input_box.dart';
import 'package:manga_domain/widgets/red_button.dart';
import 'package:manga_domain/widgets/underlined_button.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Image.asset("assets/images/signup.png"),
          SizedBox(height: 10.0),
          const Text(
            "Create Account",
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
                  InputBox(title: "Username"),
                  SizedBox(height: 20.0),
                  InputBox(title: "Email"),
                  SizedBox(height: 20.0),
                  InputBox(title: "Password"),
                  SizedBox(height: 20.0),
                  RedButton(
                    title: "Sign Up",
                    width: 400,
                    height: 45,
                    goToPage: Login(),
                  ),
                  SizedBox(height: 10.0),
                  UnderlinedButton(title: "Already have an account? Log in"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
