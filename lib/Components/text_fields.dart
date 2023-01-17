import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {

  final String hintText;
  final controller;
  final bool obscureText;

  const TextFields({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 350,
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade500)
            ),
            filled: true,
            fillColor: Colors.grey.shade200,
            border: const OutlineInputBorder(),
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
