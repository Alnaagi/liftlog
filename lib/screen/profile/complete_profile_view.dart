import 'package:flutter/material.dart';
import 'package:flutter_linear_datepicker/flutter_datepicker.dart';
import 'package:liftlog/common/color_extension.dart';
import 'package:liftlog/common_widget/round_button.dart';
import 'package:liftlog/common_widget/round_textfield.dart';

class CompleteProfilePage extends StatefulWidget {
  const CompleteProfilePage({
    super.key,
  });

  @override
  State<CompleteProfilePage> createState() => _CompleteProfilePageState();
}

class _CompleteProfilePageState extends State<CompleteProfilePage> {
  var weightindex = 0;
  var Weight_unit = [
    "KG",
    "LB",
  ];
  var heightindex = 0;
  var Height_unit = ["CM", "IN"];
  String? newValue;
  var Datepick;
  var Datepicked = 'Date of Birth';
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
                  height: media.width * 0.08,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: myThemecolor.lightGray),
                  child: DropdownButtonHideUnderline(
                      child: Row(
                    children: [
                      SizedBox(
                        width: media.width * 0.03,
                      ),
                      Icon(
                        Icons.people_alt,
                        color: myThemecolor.grey,
                      ),
                      SizedBox(
                        width: media.width * 0.025,
                      ),
                      Expanded(
                        child: DropdownButton(
                            borderRadius: BorderRadius.circular(15),
                            dropdownColor: myThemecolor.lightGray,
                            hint: Text(
                              'Choose your Gender',
                            ),
                            onChanged: (String? changedValue) {
                              setState(() {
                                newValue = changedValue;
                                print(newValue);
                              });
                            },
                            value: newValue,
                            items: <String>[
                              'Male',
                              'Female',
                            ].map((String value) {
                              return new DropdownMenuItem<String>(
                                value: value,
                                child: new Text(value),
                              );
                            }).toList()),
                      ),
                    ],
                  )),
                ),
                // RoundTextField(
                //   hinttext: "Choose Gender",
                //   icon: Icon(Icons.person_outline, color: myThemecolor.grey),
                // ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                GestureDetector(
                  onTap: () {
                    showDialog(
                      // useSafeArea: true,
                      context: context,
                      builder: (BuildContext) {
                        return AlertDialog(
                            actions: <Widget>[
                              TextButton(
                                child: const Text('Cancel'),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              ),
                              TextButton(
                                child: const Text('Confirm'),
                                onPressed: () {
                                  setState(() {
                                    Datepicked = Datepick;
                                  });
                                  print(Datepicked);
                                  Navigator.of(context).pop();
                                },
                              ),
                            ],
                            title: Text("hello"),
                            content: LinearDatePicker(
                              selectedRowStyle: TextStyle(color: Colors.black),
                              unselectedRowStyle:
                                  TextStyle(color: myThemecolor.grey),
                              yearText: "Year",
                              monthText: "Month",
                              dayText: "Day",
                              labelStyle: TextStyle(fontFamily: "Poppins"),
                              dateChangeListener: (String date) {
                                setState(() {
                                  Datepick = date;
                                });
                              },
                            ));
                      },
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: myThemecolor.lightGray),
                    child: Text(Datepicked),
                    //  CalendarDatePicker2WithActionButtons(
                    //   config: CalendarDatePicker2WithActionButtonsConfig(),
                    //   value: [],
                    // )
                    //DatePickerDialog(
                    //  firstDate: DateTime(1930), lastDate: DateTime.now()),
                    // child: DropdownButtonHideUnderline(
                    //     child: Row(
                    //   children: [
                    //     SizedBox(
                    //       width: media.width * 0.03,
                    //     ),
                    //     Icon(
                    //       Icons.people_alt,
                    //       color: myThemecolor.grey,
                    //     ),
                    //     SizedBox(
                    //       width: media.width * 0.025,
                    //     ),
                    //     Expanded(
                    //       child: CalendarDatePicker2(
                    //         config: CalendarDatePicker2Config(),
                    //         value: [],
                    //       ),
                    //     ),
                    //     // Expanded(
                    //     //   child: DropdownButton(
                    //     //       borderRadius: BorderRadius.circular(15),
                    //     //       dropdownColor: myThemecolor.lightGray,
                    //     //       hint: Text(
                    //     //         'Date of Birth',
                    //     //       ),
                    //     //       onChanged: (String? changedValue) {
                    //     //         setState(() {
                    //     //           newValue = changedValue;
                    //     //           print(newValue);
                    //     //         });
                    //     //       },
                    //     //       value: newValue,
                    //     //       items: <String>[
                    //     //         'Male',
                    //     //         'Female',
                    //     //       ].map((String value) {
                    //     //         return new DropdownMenuItem<String>(
                    //     //           value: value,
                    //     //           child: new Text(value),
                    //     //         );
                    //     //       }).toList()),
                    //     // ),
                    //   ],
                    // )),
                  ),
                ),
                // RoundTextField(
                //   hinttext: "Date of Birth",
                //   icon: Icon(Icons.calendar_month_outlined,
                //       color: myThemecolor.grey),
                // ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: media.width * 0.7,
                      child: RoundTextField(
                        hinttext: "Your Weight",
                        icon: Icon(Icons.monitor_weight_outlined,
                            color: myThemecolor.grey),
                        // margin: EdgeInsets.all(10),
                      ),
                    ),
                    SizedBox(
                      width: media.width * 0.04,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          weightindex = weightindex + 1;
                        });
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: myThemecolor.lightGray,
                            border:
                                Border.all(width: 1, color: myThemecolor.grey),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(Weight_unit[
                                  weightindex % Weight_unit.length]),
                            ]),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: media.width * 0.7,
                      child: RoundTextField(
                        hinttext: "Your Height",
                        icon: Icon(Icons.monitor_weight_outlined,
                            color: myThemecolor.grey),
                        // margin: EdgeInsets.all(10),
                      ),
                    ),
                    SizedBox(
                      width: media.width * 0.04,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          heightindex = heightindex + 1;
                        });
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: myThemecolor.lightGray,
                            border:
                                Border.all(width: 1, color: myThemecolor.grey),
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(Height_unit[
                                  heightindex % Weight_unit.length]),
                            ]),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: media.width * 0.08,
                ),
                RoundButtonWidget(title: "Login", onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
