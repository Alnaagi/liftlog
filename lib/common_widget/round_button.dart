import 'package:flutter/material.dart';
import 'package:liftlog/common/color_extension.dart';

enum RoundButtonType { bgGradient, bgSGradient, textGradient }

class RoundButtonWidget extends StatelessWidget {
  final String title;
  final IconData? icon;
  final RoundButtonType type;
  final VoidCallback onPressed;
  const RoundButtonWidget({
    this.icon,
    super.key,
    required this.title,
    required this.onPressed,
    this.type = RoundButtonType.bgGradient,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: myThemecolor.grey,
      onPressed: onPressed,
      height: 50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      textColor: myThemecolor.white,
      minWidth: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              title,
              style: TextStyle(
                  color: myThemecolor.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Icon(
            icon,
          )
        ],
      ),
    );
  }
}
