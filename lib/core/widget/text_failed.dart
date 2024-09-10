import 'package:flutter/material.dart';

class CustomTextFailed extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool? passwordActive;
  const CustomTextFailed(
      {super.key,
      required this.hint,
      required this.controller,
      this.passwordActive});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.all(10),
      child: TextFormField(
        obscureText: passwordActive ?? false,
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffe5b6f2))),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffe5b6f2))),
          fillColor: const Color(0xffe5b6f2),
          filled: true,
          hintText: hint,
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xffe5b6f2),
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
