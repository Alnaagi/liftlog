import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:liftlog/common/color_extension.dart';
import 'package:liftlog/common_widget/round_button.dart';
import 'package:liftlog/screen/profile/welcome_view.dart';

class WhatIsYourGoalPage extends StatefulWidget {
  const WhatIsYourGoalPage({super.key});

  @override
  State<WhatIsYourGoalPage> createState() => _WhatIsYourGoalPageState();
}

class _WhatIsYourGoalPageState extends State<WhatIsYourGoalPage> {
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: myThemecolor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: media.width * 0.08,
              ),
              Text(
                "Let’s complete your profile",
                style: TextStyle(
                    color: myThemecolor.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "It will help us to know more about you!",
                style: TextStyle(
                    color: const Color.fromARGB(137, 0, 0, 0), fontSize: 14),
              ),
              SizedBox(
                height: media.height * 0.05,
              ),
              CarouselSlider(
                items: [
                  "assets/images/muscle.png",
                  "assets/images/gain-weight.png",
                  "assets/images/loose-weight.png"
                ]
                    .map((gObj) => Container(
                          child: Column(children: [
                            Image.asset(
                              gObj,
                              width: media.width * 0.6,
                              alignment: Alignment.center,
                              fit: BoxFit.fitWidth,
                            ),
                            SizedBox(
                              height: media.width * 0.08,
                            ),
                            Text(
                              "Let’s complete your profile",
                              style: TextStyle(
                                  color: myThemecolor.black,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "It will help us to know more about you!",
                              style: TextStyle(
                                  color: const Color.fromARGB(137, 0, 0, 0),
                                  fontSize: 14),
                            ),
                          ]),
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          width: media.width,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(25)),
                        ))
                    .toList(),
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  autoPlay: false,
                  enlargeCenterPage: true,
                  viewportFraction: 0.7,
                  aspectRatio: 0.74,
                  initialPage: 0,
                ),
              ),
              SizedBox(
                height: media.height * 0.08,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: RoundButtonWidget(
                  title: "Confirm",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WelcomePage(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
