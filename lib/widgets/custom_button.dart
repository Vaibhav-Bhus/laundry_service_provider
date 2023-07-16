// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final onPressed;
  final title;

  const CustomButton({super.key, this.onPressed, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
          color: const Color(0XFF5597FF),
          borderRadius: BorderRadius.circular(5)),
      child: Center(
        child: InkWell(
          onTap: onPressed,
          child: Text(
            title,
            style: const TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
