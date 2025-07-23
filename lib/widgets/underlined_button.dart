import 'package:flutter/material.dart';
import 'package:manga_domain/services/theme.dart';

class UnderlinedButton extends StatelessWidget {
  const UnderlinedButton({
    super.key,
    required this.title,
    required this.goToPage,
  });

  final String title;
  final Widget goToPage;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => goToPage),
        );
      },
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
