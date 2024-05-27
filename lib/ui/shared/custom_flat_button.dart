import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  const CustomFlatButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = Colors.pink,
  });

  final void Function() onPressed;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: color,
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
          text,
        ),
      ),
    );
  }
}
