import 'package:flutter/material.dart';
import 'package:liftlog/common/color_extension.dart';
import 'package:liftlog/common/onboarding_example.dart';
import 'package:liftlog/common_widget/round_button.dart';
import 'package:liftlog/screen/onboarding/onboarding_screen.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: myThemecolor.white,
      body: Container(
        width: media.width,
        height: media.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: myThemecolor.primaryG,
                begin: Alignment.centerRight,
                end: Alignment.centerLeft)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Spacer(),
              SizedBox(
                height: 50,
              ),
              Text(
                "LiftLog",
                style: TextStyle(
                    color: myThemecolor.black,
                    fontSize: 36,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "COMMIT TO BE FIT",
                style: TextStyle(
                  color: myThemecolor.grey,
                  fontSize: 18,
                ),
              ),
              const Spacer(),
              SafeArea(
                  child: Padding(
                padding: const EdgeInsets.all(25),
                child: RoundButtonWidget(
                    title: "Get Started",
                    onPressed: () {
                      Navigator.of(context).push(_createRoute());

                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => OnboardingScreen(),
                      //     ));
                    }),
              ))
            ]),
          ],
        ),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        const OnboardingExample(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
