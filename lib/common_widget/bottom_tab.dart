import 'package:flutter/material.dart';

class BottomTabWidget extends StatelessWidget {
  const BottomTabWidget({
    super.key,
    required this.icon,
    required this.selectIcon,
    required this.isActive,
    required this.onTap,
  });
  final String icon;
  final String selectIcon;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          isActive ? selectIcon : icon,
          width: 25,
          height: 25,
          fit: BoxFit.fitWidth,
        ),
        SizedBox(
          height: isActive ? 8 : 12,
        ),
        if (isActive)
          Container(
            height: 4,
            width: 4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2), color: Colors.black),
          )
      ]),
    );
  }
}
