import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool obscure;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.controller,
    required this.obscure,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        validator: validator,
        cursorColor: Colors.grey,
        obscureText: obscure,
        controller: controller,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(color: Colors.grey, width: 1)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 1),
              borderRadius: BorderRadius.circular(4.0)),
          hintText: hintText,errorStyle:  const TextStyle(height: 0.05),
          prefixIcon: Icon(icon),
          contentPadding: const EdgeInsets.only(
            top: 4,
          ),
        ),
      ),
    );
  }
}
