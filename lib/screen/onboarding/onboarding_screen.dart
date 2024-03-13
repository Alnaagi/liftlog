import 'package:flutter/material.dart';
import 'package:liftlog/common/color_extension.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: myThemecolor.white,
      body: Stack(children: [
        PageView.builder(
            controller: controller,
            itemBuilder: (context, index) {
              return SizedBox(
                width: media.width,
                height: media.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      "assets/images/on1x4.png",
                      width: media.width,
                      fit: BoxFit.fitWidth,
                    ),
                    SizedBox(
                      height: media.width * 0.1,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        "Track Your Goal",
                        style: TextStyle(
                            color: myThemecolor.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
              );
            })
      ]),
    );
  }
}
