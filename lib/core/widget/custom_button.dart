import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final void Function() onPressed;
  final Widget widget;
  const CustomButton({
    super.key,
    required this.onPressed,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffe5b6f2),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        child: widget,
      ),
    );
  }
}
