import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:liftlog/screen/signup/signup_view.dart';

final pages = [
  const PageData(
    image: AssetImage("assets/images/logo.png"),
    title: "LiftLog",
    tsize: 80,
    subtitle: "Commit to be fit",
    subsize: 28,
    bgColor: Colors.blue,
    textColor: Colors.white,
  ),
  const PageData(
    image: AssetImage("assets/images/goals.png"),
    title: "Track Goals",
    subtitle:
        "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
    textColor: Colors.black,
    tsize: 50,
    subsize: 20,
    bgColor: Colors.white,
  ),
  const PageData(
    image: AssetImage("assets/images/calories.png"),
    title: "Burn Calories",
    subtitle:
        "Let's keep burning, to achive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
    tsize: 45,
    subsize: 20,
    bgColor: Color.fromARGB(255, 124, 122, 124),
  ),
  const PageData(
    image: AssetImage("assets/images/vegetables.png"),
    title: "Eat Healthy",
    subtitle:
        "Let's start a healthy lifestyle with us, we will help you determine your diet. Don't forget healthy eating healthy life",
    tsize: 45,
    subsize: 20,
    bgColor: Color.fromARGB(255, 16, 185, 174),
  ),
  const PageData(
    image: AssetImage("assets/images/sleep.png"),
    title: "Sleep Quality",
    textColor: Colors.white,
    subtitle:
        "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
    tsize: 45,
    subsize: 20,
    bgColor: Color.fromARGB(255, 43, 37, 32),
  ),
];

class OnboardingExample extends StatelessWidget {
  const OnboardingExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ConcentricPageView(
        colors: pages.map((p) => p.bgColor).toList(),
        radius: screenWidth * 0.1,
        curve: Curves.ease,
        nextButtonBuilder: (context) => Padding(
          padding: const EdgeInsets.only(left: 3), // visual center
          child: Icon(
            Icons.navigate_next,
            size: screenWidth * 0.08,
          ),
        ),
        // itemCount: pages.length,
        duration: const Duration(milliseconds: 1500),
        // opacityFactor: 2.0,

        onFinish: () {
          Navigator.of(context).push(_createRoute());
        },
        // scaleFactor: 0.2,
        // verticalPosition: 0.7,

        // direction: Axis.vertical,
        itemCount: pages.length,
        // onFinish: ,
        // physics: NeverScrollableScrollPhysics(),
        itemBuilder: (index) {
          final page = pages[index % pages.length];
          return SafeArea(
            child: _Page(page: page),
          );
        },
      ),
    );
  }
}

class PageData {
  final String? title;
  final String? subtitle;
  final IconData? icon;
  final Color bgColor;
  final Color textColor;
  final AssetImage image;
  final double tsize;
  final double subsize;

  const PageData({
    this.title,
    this.icon,
    required this.tsize,
    required this.subsize,
    required this.image,
    this.subtitle,
    this.bgColor = Colors.white,
    this.textColor = Colors.black,
  });
}

class _Page extends StatelessWidget {
  final PageData page;

  const _Page({Key? key, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    //final screenWidth = MediaQuery.of(context).size.width;
    //var media = MediaQuery.of(context).size;
    space(double p) => SizedBox(height: screenHeight * p / 100);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          space(10),
          _Image(
            page: page,
            size: 300,
          ),
          space(2),
          _Text(
            page: page,
            style: TextStyle(
              fontSize: page.tsize,
            ),
          ),
          _subText(
            page: page,
            style: TextStyle(
              fontSize: page.subsize,
            ),
          ),
        ],
      ),
    );
  }
}

class _Text extends StatelessWidget {
  const _Text({
    Key? key,
    required this.page,
    this.style,
  }) : super(key: key);

  final PageData page;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      page.title ?? '',
      style: TextStyle(
        color: page.textColor,
        fontWeight: FontWeight.w700,
        fontFamily: 'Poppins',
        letterSpacing: 0.0,
        // fontSize: 18,
        height: 1.2,
      ).merge(style),
      textAlign: TextAlign.center,
    );
  }
}

class _subText extends StatelessWidget {
  const _subText({
    Key? key,
    required this.page,
    this.style,
  }) : super(key: key);

  final PageData page;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Text(
      page.subtitle ?? '',
      style: TextStyle(
        color: page.textColor,
        fontFamily: 'Poppins',
        letterSpacing: 2.0,
        // fontSize: 18,
        height: 1.5,
      ).merge(style),
      textAlign: TextAlign.left,
    );
  }
}

class _Image extends StatelessWidget {
  const _Image({
    Key? key,
    required this.page,
    required this.size,
  }) : super(key: key);

  final PageData page;
  final double size;

  @override
  Widget build(BuildContext context) {
    // var media = MediaQuery.of(context).size;
    return Container(
      width: size,
      height: size,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,
        children: [Image(image: page.image)],
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const SignupPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.easeIn;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
