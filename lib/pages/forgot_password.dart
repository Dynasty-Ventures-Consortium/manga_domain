import 'package:flutter/material.dart';
import 'package:manga_domain/pages/login.dart';
import 'package:manga_domain/services/theme.dart';
import 'package:manga_domain/widgets/input_box.dart';
import 'package:manga_domain/widgets/red_button.dart';
import 'package:manga_domain/widgets/underlined_button.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text(
          "Forgot Password",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const Text(
              "Reset your password",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25.0,
              ),
            ),
            Form(
              child: Column(
                children: [
                  const SizedBox(height: 10.0),
                  const Text(
                    "Please enter the email you used to register, and you will receive a reset email.",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      // fontSize: 25.0,
                    ),
                  ),
                  SizedBox(height: 25.0),
                  InputBox(title: "Email"),
                  SizedBox(height: 20.0),
                  RedButton(
                    title: "Send Reset Link",
                    width: 400,
                    height: 40,
                    goToPage: Login(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 500.0),
            UnderlinedButton(
              title: "Remember your password? Sign In",
              goToPage: Login(),
            ),
          ],
        ),
      ),
    );
  }
}
