import 'package:flutter/material.dart';

class ExercisesCell extends StatelessWidget {
  const ExercisesCell({super.key, required this.obj, required this.onPressed});
  final Map obj;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 1)]),
        child: Stack(
          alignment: Alignment.bottomLeft,
        ),
      ),
    );
  }
}
