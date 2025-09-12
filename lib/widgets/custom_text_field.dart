import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(
          context,
        ).copyWith(color: Color(0xffaaaaaa)),
        fillColor: const Color(0xfffafafa),
        filled: true,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: const Color(0xfffafafa)),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
