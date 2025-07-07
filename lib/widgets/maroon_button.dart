import 'package:flutter/material.dart';
import 'package:manga_domain/services/theme.dart';

class MaroonButton extends StatelessWidget {
  const MaroonButton({
    super.key,
    required this.title,
    required this.width,
    required this.height,
  });

  final String title;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all<Color>(darkMaroon),
        foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        minimumSize: WidgetStateProperty.all(Size(width, height)),
        elevation: WidgetStateProperty.all(0),
      ),
      child: Text(title),
    );
  }
}
