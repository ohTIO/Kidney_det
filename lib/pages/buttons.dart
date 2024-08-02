import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String? buttonText;
  final VoidCallback onPressed;

  const Buttons({super.key, required this.buttonText, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: const ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(Color(0xFF023ED8))),
      child: Text(
        "$buttonText",
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0),
      ),
    );
  }
}
