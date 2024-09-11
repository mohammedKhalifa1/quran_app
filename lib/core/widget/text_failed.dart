import 'package:flutter/material.dart';

class CustomTextFailed extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool? passwordActive;
  final double? width;
  const CustomTextFailed(
      {super.key,
      required this.hint,
      required this.controller,
      this.passwordActive,
      this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: width != null
              ? BorderRadius.circular(10)
              : BorderRadius.circular(20),
        ),
        width: width ?? width,
        margin: width != null ? null : const EdgeInsets.all(10),
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
            border: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Color(0xffe5b6f2),
              ),
              borderRadius: width != null
                  ? BorderRadius.all(
                      Radius.circular(10),
                    )
                  : BorderRadius.all(
                      Radius.circular(20),
                    ),
            ),
          ),
        ));
  }
}
