import 'package:flutter/material.dart';
import 'package:liftlog/common/color_extension.dart';

class RoundButtonWidget extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  const RoundButtonWidget(
      {super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: myThemecolor.white,
      onPressed: onPressed,
      height: 50,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      textColor: myThemecolor.primaryColor1,
      minWidth: double.maxFinite,
      child: ShaderMask(
        blendMode: BlendMode.srcIn,
        shaderCallback: (bounds) {
          return LinearGradient(
                  colors: myThemecolor.primaryG,
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft)
              .createShader(Rect.fromLTRB(0, 0, bounds.width, bounds.height));
        },
        child: Text(
          title,
          style: TextStyle(
              color: myThemecolor.primaryColor1,
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
