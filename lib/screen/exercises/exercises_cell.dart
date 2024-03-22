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
            // color: Colors.yellow,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 1)]),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                obj["image"],
                width: double.maxFinite,
                height: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 25),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  bottomLeft: Radius.circular(15),
                ),
                color: Colors.yellow.shade600,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    obj["title"],
                    maxLines: 1,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    obj["subtitle"],
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
