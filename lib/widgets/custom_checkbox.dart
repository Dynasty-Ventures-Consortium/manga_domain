import 'package:flutter/material.dart';
import 'package:manga_domain/services/theme.dart';

class CustomCheckbox extends StatefulWidget {
  const CustomCheckbox({super.key});

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _remember = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Remember me",
          style: TextStyle(
            fontSize: 15.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        Checkbox(
          value: _remember,
          onChanged: (bool? value) {
            setState(() {
              _remember = value!;
            });
          },
          side: BorderSide(color: textSubColor, width: 2),
          activeColor: textSubColor,
        ),
      ],
    );
  }
}
