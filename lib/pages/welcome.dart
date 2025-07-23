import 'package:flutter/material.dart';
import 'package:manga_domain/pages/signup.dart';
import 'package:manga_domain/services/theme.dart';
import 'package:manga_domain/widgets/red_button.dart';
import 'package:manga_domain/widgets/underlined_button.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          Image.asset(
            "assets/images/welcome_pic.png",
            // width: double.infinity,
            // height: double.infinity,
          ),
          SizedBox(height: 10.0),
          const Text(
            "Welcome to MangaDomain\n - Your Gateway to Epic\n Stories",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
          Spacer(),
          RedButton(title: 'Get Started', width: 350, height: 40, goToPage: Signup(),),
          UnderlinedButton(title: "Skip"),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
