import 'package:flutter/material.dart';
import 'package:liftlog/common/color_extension.dart';
import 'package:liftlog/common_widget/round_button.dart';
import 'package:liftlog/common_widget/round_textfield.dart';
import 'package:liftlog/screen/login/login.dart';
import 'package:liftlog/screen/profile/complete_profile_view.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
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
                "Create an Account",
                style: TextStyle(
                    color: myThemecolor.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: media.width * 0.05,
              ),
              RoundTextField(
                hinttext: "First Name",
                icon: Icon(Icons.person_outline, color: myThemecolor.grey),
              ),
              SizedBox(
                height: media.width * 0.04,
              ),
              RoundTextField(
                hinttext: "Last Name",
                icon: Icon(Icons.person_outline, color: myThemecolor.grey),
              ),
              SizedBox(
                height: media.width * 0.04,
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
                height: media.width * 0.04,
              ),
              Row(
                children: [
                  IconButton(
                    color: myThemecolor.grey,
                    onPressed: () {
                      setState(() {
                        isCheck = !isCheck;
                      });
                    },
                    icon: Icon(
                      isCheck
                          ? Icons.check_box
                          : Icons.check_box_outline_blank_rounded,
                      size: 30,
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          isCheck = !isCheck;
                        });
                      },
                      child: Text(
                          "By continuing you accept our Privacy Policy and Term of Use",
                          style: TextStyle(
                            color: myThemecolor.grey,
                            fontSize: 10,
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: media.width * 0.25,
              ),
              RoundButtonWidget(
                  title: "Sign Up",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CompleteProfilePage(),
                        ));
                  }),
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
                    Text("Already have an account?",
                        style: TextStyle(
                          color: myThemecolor.grey,
                          fontSize: 15,
                        )),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginPage(),
                            ));
                      },
                      child: Text("Login",
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
