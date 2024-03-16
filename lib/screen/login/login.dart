import 'package:flutter/material.dart';
import 'package:liftlog/common/color_extension.dart';
import 'package:liftlog/common_widget/round_button.dart';
import 'package:liftlog/common_widget/round_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isCheck = false;
  bool obscurepw = true;
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: media.width * 0.15,
              ),
              Text(
                "Hey there,",
                style: TextStyle(color: Colors.black54, fontSize: 18),
              ),
              Text(
                "Welcome Back",
                style: TextStyle(
                    color: myThemecolor.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: media.width * 0.05,
              ),

              RoundTextField(
                hinttext: "Email",
                icon: Icon(Icons.email_outlined, color: myThemecolor.grey),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: media.width * 0.04,
              ),
              RoundTextField(
                hinttext: "Password",
                icon:
                    Icon(Icons.lock_outline_rounded, color: myThemecolor.grey),
                obscuretext: obscurepw,
                righticon: IconButton(
                  icon: Icon(Icons.remove_red_eye),
                  onPressed: () {
                    setState(() {
                      obscurepw = !obscurepw;
                    });
                  },
                ),
              ),
              SizedBox(
                height: media.width * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      print("hello");
                    },
                    child: Text("Forgot your password ?",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                          fontSize: 12,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: media.width * 0.65,
              ),
              RoundButtonWidget(title: "Login", onPressed: () {}),
              // SizedBox(
              //   height: media.width * 0.04,
              // ),
              Row(children: [
                Expanded(
                  child: Container(
                    height: 1,
                    color: myThemecolor.grey,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text("Or"),
                ),
                Expanded(
                  child: Container(
                    height: 1,
                    color: myThemecolor.grey,
                  ),
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: myThemecolor.white,
                          border:
                              Border.all(width: 1, color: myThemecolor.grey),
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        'assets/images/google.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: media.width * 0.04,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 50,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: myThemecolor.white,
                          border:
                              Border.all(width: 1, color: myThemecolor.grey),
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset(
                        'assets/images/facebook.png',
                        width: 20,
                        height: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account yet?",
                        style: TextStyle(
                          color: myThemecolor.grey,
                          fontSize: 15,
                        )),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Sign Up",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.blue,
                            fontSize: 16,
                          )),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
