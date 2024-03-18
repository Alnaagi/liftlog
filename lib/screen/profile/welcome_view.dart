import 'package:flutter/material.dart';
import 'package:liftlog/common/color_extension.dart';
import 'package:liftlog/common_widget/round_button.dart';
import 'package:liftlog/screen/home/homepage.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({
    super.key,
  });

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: myThemecolor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: media.width * 0.08,
                ),
                Container(
                  width: 300,
                  height: 300,
                  child: Stack(
                    clipBehavior: Clip.none,
                    fit: StackFit.expand,
                    children: [
                      Image.asset("assets/images/logo.png"),
                    ],
                  ),
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Text(
                  "Welcome, Mohamed",
                  style: TextStyle(
                      color: myThemecolor.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "You are all set now, let’s reach your goals together with us",
                  style: TextStyle(
                      color: const Color.fromARGB(137, 0, 0, 0), fontSize: 14),
                ),
                SizedBox(
                  height: media.width * 0.08,
                ),
                RoundButtonWidget(
                  title: "Go To HomePage",
                  icon: Icons.arrow_forward_ios_rounded,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
