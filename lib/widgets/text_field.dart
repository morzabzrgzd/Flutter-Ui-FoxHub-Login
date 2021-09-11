import 'package:flutter/material.dart';



class BuildTextField extends StatelessWidget {
  const BuildTextField({
    Key? key,
    required this.size,
    required this.hintText,
    required this.icon,
    required this.obscureText,
  }) : super(key: key);

  final Size size;
  final String hintText;
  final Icon icon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: 7),
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.05,
        vertical: size.height * 0.018,
      ),
      height: size.height * 0.08,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          icon: icon,
        ),
      ),
    );
  }
}
