import 'package:flutter/material.dart';
import 'package:liftlog/common/color_extension.dart';

class OnboardingWidget extends StatelessWidget {
  final Map metadata;
  const OnboardingWidget({super.key, required this.metadata});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return SizedBox(
      width: media.width,
      height: media.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            metadata["image"].toString(),
            width: media.width,
            fit: BoxFit.fitWidth,
          ),
          SizedBox(
            height: media.width * 0.1,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              metadata["title"].toString(),
              style: TextStyle(
                  color: myThemecolor.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              metadata["subtitle"].toString(),
              style: TextStyle(
                color: myThemecolor.grey,
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
