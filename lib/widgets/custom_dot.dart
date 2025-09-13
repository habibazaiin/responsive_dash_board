import 'package:flutter/material.dart';

class CustomDot extends StatelessWidget {
  const CustomDot({super.key, required this.isActive});
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: isActive ? 32 : 8,
      width: 8,
      decoration: BoxDecoration(
        color: isActive ? Color(0XFF4DB7F2) : Color(0XFFE7E7E7),
        borderRadius: BorderRadius.circular(12)
      ),
    );
  }
}