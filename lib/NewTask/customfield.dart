import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller_,
    required this.isPassword_,
    required this.error_,
    required this.hintText_,
    required this.labelText_,
  });

  final TextEditingController controller_;
  final bool isPassword_;
  final String error_;
  final String hintText_;
  final String labelText_;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        obscureText: (isPassword_) ? true : false,
        controller: controller_,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return error_;
          }
          return null;
        },
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          hintText: hintText_,
          labelText: labelText_,
        ),
      ),
    );
  }
}
