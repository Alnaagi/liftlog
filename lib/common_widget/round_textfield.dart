import 'package:flutter/material.dart';
import 'package:liftlog/common/color_extension.dart';

class RoundTextField extends StatelessWidget {
  final TextInputType? keyboardType;
  final TextEditingController? controller;
  final String hinttext;
  final Widget? icon;
  final Widget? righticon;
  final bool obscuretext;
  final EdgeInsets? margin;
  const RoundTextField(
      {super.key,
      this.controller,
      required this.hinttext,
      required this.icon,
      this.margin,
      this.keyboardType,
      this.obscuretext = false,
      this.righticon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
          color: myThemecolor.lightGray,
          borderRadius: BorderRadius.circular(15)),
      child: TextField(
        keyboardType: keyboardType,
        controller: controller,
        obscureText: obscuretext,
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 9, horizontal: 8.0),
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            prefixIcon: icon,
            suffixIcon: righticon,
            hintText: hinttext,
            hintStyle: TextStyle(color: myThemecolor.grey, fontSize: 15)),
      ),
    );
  }
}
