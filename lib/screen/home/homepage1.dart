import 'package:flutter/material.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: media.height * 0.01,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(8),
                    //   child: Image.asset(
                    //     "assets/images/medcare.png",
                    //     // height: 40,
                    //     width: 30,
                    //     // fit: BoxFit.cover,
                    //   ),
                    // ),
                    SizedBox(
                      width: media.width * 0.02,
                    ),
                    const Text(
                      "LiftLog",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(
                  height: media.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child:
                          // Welcomenamefilled
                          //     ? Text(
                          //         'Welcome Back, $WelcomeName !',
                          //         style: const TextStyle(
                          //           color: Colors.black,
                          //           fontSize: 30,
                          //           fontWeight: FontWeight.bold,
                          //           fontFamily: "Poppins",
                          //         ),
                          //       )
                          //     :
                          const Text(
                        'Welcome Back!',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Poppins",
                        ),
                      )),
                ),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 20),
                //   child: Row(
                //     children: [
                //       const Icon(Icons.location_on_outlined,
                //           color: Colors.grey),
                //       SizedBox(
                //         width: media.width * 0.02,
                //       ),

                //       // locationformainpage
                //       //     ? Text(City,
                //       //         style: const TextStyle(
                //       //             fontSize: 15, color: Colors.grey))
                //       //     : const SizedBox()
                //     ],
                //   ),
                // ),
                SizedBox(
                  height: media.height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                      onChanged: (String value) {
                        if (value != "") {
                          // _Textfieldfilled = true;
                          //  Welcomenamefilled = true;
                        }
                        setState(() {
                          // WelcomeName = value;
                        });
                      },
                      keyboardType: TextInputType.name,
                      // controller: _Textfieldfilled,
                      // obscureText: obscuretext,
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 9, horizontal: 8.0),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          prefixIcon:
                              const Icon(Icons.search, color: Colors.grey),
                          hintText: "Search",
                          hintStyle: TextStyle(
                              color: Colors.grey.shade400, fontSize: 15)),
                    ),
                  ),
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Current Plan",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "See all",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.height * 0.005,
                ),
                GestureDetector(
                  // onTap: () {
                  //   setState(() {
                  //     btnActive = !btnActive;
                  //   });

                  //   if (btn2Active = true) {
                  //     btn2Active = false;
                  //   }
                  // },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 105,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 98, 149, 226),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // Padding(
                                //   padding:
                                //       const EdgeInsets.only(top: 5, right: 8),
                                //   child: ClipRRect(
                                //     borderRadius: BorderRadius.circular(8),
                                //     child:

                                //     Image.asset(
                                //       "assets/images/samrat.png",
                                //       // height: 40,
                                //       width: 40,
                                //       // fit: BoxFit.cover,
                                //     ),
                                //   ),
                                // ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        const Text(
                                          "Hypertrophy Plan",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        SizedBox(
                                          width: media.width * 0.06,
                                        ),
                                        // Text(
                                        //   "(220)",
                                        //   style: TextStyle(
                                        //     color: Colors.white70,
                                        //     fontSize: 12,
                                        //     // letterSpacing: 0.8,
                                        //     fontFamily: "Poppins",
                                        //   ),
                                        // ),
                                        // const Padding(
                                        //   padding: EdgeInsets.symmetric(
                                        //       horizontal: 2),
                                        //   child: Icon(
                                        //     Icons.star,
                                        //     color: Colors.amber,
                                        //     size: 16,
                                        //   ),
                                        // ),
                                        const Text(
                                          "90%",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              // letterSpacing: 0.8,
                                              fontFamily: "Poppins",
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                    // const Text(
                                    //   "GI & Laparoscopic Surgeon",
                                    //   style: TextStyle(
                                    //       color: Colors.white70,
                                    //       fontSize: 14,
                                    //       // letterSpacing: 0.8,
                                    //       fontFamily: "Poppins",
                                    //       height: 0.8),
                                    //   // textAlign: TextAlign.center,
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: media.width * 0.05),
                                    child: Icon(
                                      Icons.calendar_today_outlined,
                                      color: Colors.white,
                                      size: 17,
                                    ),
                                  ),
                                  SizedBox(
                                    width: media.width * 0.01,
                                  ),
                                  Text(
                                    "4 Weeks",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      // letterSpacing: 0.8,
                                      fontFamily: "Poppins",
                                    ),
                                    // textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    width: media.width * 0.05,
                                  ),
                                  Icon(
                                    Icons.access_time_rounded,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                  SizedBox(
                                    width: media.width * 0.01,
                                  ),
                                  Text(
                                    "5 day split",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      // letterSpacing: 0.8,
                                      fontFamily: "Poppins",
                                    ),
                                    // textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    width: media.width * 0.30,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: media.height * 0.008,
                ),
                GestureDetector(
                  // onTap: () {
                  //   setState(() {
                  //     btnActive = !btnActive;
                  //   });

                  //   if (btn2Active = true) {
                  //     btn2Active = false;
                  //   }
                  // },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 105,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 255, 108, 82),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: media.width * 0.04, top: 15),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Blood test",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Poppins",
                                          ),
                                        ),
                                        const Text(
                                          "your next checkup",
                                          style: TextStyle(
                                              color: Colors.white70,
                                              fontSize: 14,
                                              // letterSpacing: 0.8,
                                              fontFamily: "Poppins",
                                              height: 0.5),
                                          // textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_today_outlined,
                                      color: Colors.white,
                                      size: 17,
                                    ),
                                    SizedBox(
                                      width: media.width * 0.01,
                                    ),
                                    Text(
                                      "30 Mar",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        // letterSpacing: 0.8,
                                        fontFamily: "Poppins",
                                      ),
                                      // textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              // Image.asset(
                              //   "assets/images/bloodmdcare.png",
                              //   // height: 40,
                              //   width: 130,
                              //   // fit: BoxFit.cover,
                              // ),
                              // Image.asset(
                              //   "assets/images/bloodgroup.png",
                              //   height: 55,
                              //   width: 105,
                              //   // fit: BoxFit.cover,
                              // ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "Categories",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        height: 0.5,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Poppins",
                      ),
                    ),
                  ),
                ),

                // const SizedBox(
                //     // width: double.maxFinite,
                //     height: 200,
                //     child: CategoriesView()),
                // // SizedBox(
                // //   height: media.height * 0.15,
                // // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
