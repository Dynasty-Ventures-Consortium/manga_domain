import 'package:flutter/material.dart';
import 'package:manga_domain/services/theme.dart';

class InputBox extends StatelessWidget {
  const InputBox({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: inputBoxColor,
      ),
      child: TextFormField(
        style: TextStyle(
          color: textSubColor,
          fontWeight: FontWeight.bold,
          fontSize: 16.0,
          letterSpacing: 1.0,
        ),
        decoration: InputDecoration(
          hintText: title,
          hintStyle: TextStyle(color: textSubColor),
          border: InputBorder.none,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 15.0,
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "Please enter something";
          }
          return null;
        },
      ),
    );
  }
}
