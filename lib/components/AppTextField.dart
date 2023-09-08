import 'package:flutter/material.dart';
import 'package:flutter_application_test/styles/AppColors.dart';

class AppTextField extends StatelessWidget {
  final String hint;
  const AppTextField({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        labelText: hint,
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
        focusedBorder: const UnderlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            borderSide: BorderSide(color: Colors.transparent)),
        filled: true,
        fillColor: AppColors.field,
      ),
    );
  }
}
