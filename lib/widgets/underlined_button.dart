import 'package:flutter/material.dart';
import 'package:manga_domain/services/theme.dart';

class UnderlinedButton extends StatelessWidget {
  const UnderlinedButton({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        title,
        style: TextStyle(
          color: textSubColor,
          decorationColor: textSubColor,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}
