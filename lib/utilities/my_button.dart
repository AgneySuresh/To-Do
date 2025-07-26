import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  VoidCallback onPressed;
  MyButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Color(0xffdee2e6),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22)
      ),
      child: Text(text),
    );
  }
}