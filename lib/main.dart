import 'package:flutter/material.dart';
import 'package:liftlog/common/color_extension.dart';
import 'package:liftlog/screen/onboarding/onboarding_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'liftlog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: myThemecolor.primaryColor1, fontFamily: "Poppins"),
      home: const OnboardingExample(),
    );
  }
}
