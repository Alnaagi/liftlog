import 'package:flutter/material.dart';
import 'package:liftlog/common/line_chart.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  late ValueNotifier<double> valueNotifier;

  @override
  void initState() {
    super.initState();
    valueNotifier = ValueNotifier(50.0);
  }

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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
                          Text(
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

                    /// See all Button ///
                    InkWell(
                      onTap: () {},
                      child: const Padding(
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

                //// Container Hypertrophy Plan ///
                InkWell(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                      height: 90,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 98, 149, 226),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                              // Row ------
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 4),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.calendar_today_outlined,
                                      color: Colors.white,
                                      size: 17,
                                    ),
                                    SizedBox(
                                      width: media.width * 0.01,
                                    ),
                                    const Text(
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
                                    const Icon(
                                      Icons.access_time_rounded,
                                      color: Colors.white,
                                      size: 17,
                                    ),
                                    SizedBox(
                                      width: media.width * 0.01,
                                    ),
                                    const Text(
                                      "5 day split",
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
                              ),
                            ],
                          ),

                          /////// SimpleCircularProgressBar ///////
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: SimpleCircularProgressBar(
                              progressColors: [
                                Colors.amber,
                              ],
                              backColor: Colors.black26,
                              backStrokeWidth: 10,
                              progressStrokeWidth: 10,
                              size: 60,
                              valueNotifier: valueNotifier,
                              mergeMode: true,
                              onGetText: (double value) {
                                return Text(
                                  '${value.toInt()}%',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: media.height * 0.008,
                ),
                // InkWell(
                //   child: Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 20),
                //     child: Container(
                //       height: 105,
                //       width: double.maxFinite,
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(15),
                //         color: const Color.fromARGB(255, 255, 108, 82),
                //       ),
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Row(
                //                 children: [
                //                   Padding(
                //                     padding: EdgeInsets.only(
                //                         left: media.width * 0.04, top: 15),
                //                     child: const Column(
                //                       crossAxisAlignment:
                //                           CrossAxisAlignment.start,
                //                       children: [
                //                         Text(
                //                           "Blood test",
                //                           style: TextStyle(
                //                             color: Colors.white,
                //                             fontSize: 20,
                //                             fontWeight: FontWeight.bold,
                //                             fontFamily: "Poppins",
                //                           ),
                //                         ),
                //                         Text(
                //                           "your next checkup",
                //                           style: TextStyle(
                //                               color: Colors.white70,
                //                               fontSize: 14,
                //                               // letterSpacing: 0.8,
                //                               fontFamily: "Poppins",
                //                               height: 0.5),
                //                           // textAlign: TextAlign.center,
                //                         ),
                //                       ],
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //               Padding(
                //                 padding: const EdgeInsets.symmetric(
                //                     vertical: 12, horizontal: 20),
                //                 child: Row(
                //                   children: [
                //                     const Icon(
                //                       Icons.calendar_today_outlined,
                //                       color: Colors.white,
                //                       size: 17,
                //                     ),
                //                     SizedBox(
                //                       width: media.width * 0.01,
                //                     ),
                //                     const Text(
                //                       "30 Mar",
                //                       style: TextStyle(
                //                         color: Colors.white,
                //                         fontSize: 16,
                //                         // letterSpacing: 0.8,
                //                         fontFamily: "Poppins",
                //                       ),
                //                       // textAlign: TextAlign.center,
                //                     ),
                //                   ],
                //                 ),
                //               )
                //             ],
                //           ),
                //           const Stack(
                //             alignment: Alignment.centerLeft,
                //             children: [
                //               // Image.asset(
                //               //   "assets/images/bloodmdcare.png",
                //               //   // height: 40,
                //               //   width: 130,
                //               //   // fit: BoxFit.cover,
                //               // ),
                //               // Image.asset(
                //               //   "assets/images/bloodgroup.png",
                //               //   height: 55,
                //               //   width: 105,
                //               //   // fit: BoxFit.cover,
                //               // ),
                //             ],
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: media.height * 0.02,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      "Progress",
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
                LineChartSample2(),
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
