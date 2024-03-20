import 'package:flutter/material.dart';
import 'package:liftlog/common/color_extension.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: () {},
            child: Column(children: [
              Icon(
                Icons.home,
                size: media.width * 0.1,
              )
            ]),
          )
        ],
      )),
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
                  "HomePage",
                  style: TextStyle(
                      color: myThemecolor.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "HomePage",
                  style: TextStyle(
                      color: const Color.fromARGB(137, 0, 0, 0), fontSize: 14),
                ),
                SizedBox(
                  height: media.width * 0.08,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
