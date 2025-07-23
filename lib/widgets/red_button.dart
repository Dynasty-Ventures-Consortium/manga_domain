import 'package:flutter/material.dart';
import 'package:manga_domain/services/theme.dart';

class RedButton extends StatelessWidget {
  const RedButton({
    super.key,
    required this.title,
    required this.width,
    required this.height,
    required this.goToPage,
  });

  final double width;
  final double height;
  final String title;
  final Widget goToPage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => goToPage),
          );
        },
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all<Color>(red),
          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
          minimumSize: WidgetStateProperty.all(Size(width, height)),
        ),
        child: Text(title),
      ),
    );
  }
}
