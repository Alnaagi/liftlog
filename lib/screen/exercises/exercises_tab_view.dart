import 'package:flutter/material.dart';
import 'package:liftlog/screen/exercises/exercises_cell.dart';

class ExerciseTabView extends StatefulWidget {
  const ExerciseTabView({super.key});

  @override
  State<ExerciseTabView> createState() => _ExerciseTabViewState();
}

class _ExerciseTabViewState extends State<ExerciseTabView> {
  List listArr = [
    {
      "title": "Chest",
      "subtitle": "16 Exercises",
      "image": "assets/images/Chest.png"
    },
    {
      "title": "Back",
      "subtitle": "16 Exercises",
      "image": "assets/images/back.png"
    },
    {
      "title": "Biceps",
      "subtitle": "16 Exercises",
      "image": "assets/images/biceps.png"
    },
    {
      "title": "Triceps",
      "subtitle": "16 Exercises",
      "image": "assets/images/triceps.png"
    },
    {
      "title": "Shoulders",
      "subtitle": "16 Exercises",
      "image": "assets/images/shoulders.png"
    },
    {
      "title": "Abs",
      "subtitle": "16 Exercises",
      "image": "assets/images/abs.png"
    },
    {
      "title": "Legs",
      "subtitle": "16 Exercises",
      "image": "assets/images/legs.png"
    },
    {
      "title": "forearms",
      "subtitle": "16 Exercises",
      "image": "assets/images/forearms.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    // var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: GridView.builder(
        // scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        itemBuilder: (context, index) {
          var obj = listArr[index] as Map? ?? {};
          return ExercisesCell(
            obj: obj,
            onPressed: () {},
          );
        },
        itemCount: listArr.length,
      ),
    );
  }
}
