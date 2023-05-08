import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.hintText,
      required this.icon,
      required this.suffixIcon,
      required this.obscureText,
      required this.onChaged,
      required this.enabled,
      required this.controller});

  String hintText;
  Widget? icon;
  Widget? suffixIcon;
  bool obscureText;
  bool enabled;
  void Function(String)? onChaged;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(40.0), border: Border.all(color: Colors.purple)),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        onChanged: onChaged,
        decoration: InputDecoration(
          border: InputBorder.none,
          enabled: enabled,
          hintText: hintText,
          suffixIcon: suffixIcon,
          icon: Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: icon,
          ),
        ),
      ),
    );
  }
}
