// import 'package:flutter/material.dart';
// import 'package:liftlog/common/color_extension.dart';
// import 'package:liftlog/common_widget/onboarding_widget.dart';

// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({super.key});

//   @override
//   State<OnboardingScreen> createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   var selectPage = 0;
//   PageController controller = PageController();
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     controller.addListener(() {
//       selectPage = controller.page?.round() ?? 0;

//       setState(() {});
//     });
//   }

//   List pageListArr = [
//     {
//       "title": "Track Your Goal",
//       "subtitle":
//           "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
//       "image": "assets/images/on1.png"
//     },
//     {
//       "title": "Burn The Calories",
//       "subtitle":
//           "Let's keep burning, to achieve yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
//       "image": "assets/images/on2.png"
//     },
//     {
//       "title": "Eat Healthy",
//       "subtitle":
//           "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
//       "image": "assets/images/on3.png"
//     },
//     {
//       "title": "Improve Sleep  Quality",
//       "subtitle":
//           "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning",
//       "image": "assets/images/on4.png"
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: myThemecolor.white,
//       body: Stack(alignment: Alignment.bottomRight, children: [
//         PageView.builder(
//             controller: controller,
//             itemCount: pageListArr.length,
//             itemBuilder: (context, index) {
//               var metadata = pageListArr[index] as Map? ?? {};
//               return OnboardingWidget(metadata: metadata);
//             }),
//         SizedBox(
//           width: 120,
//           height: 120,
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               SizedBox(
//                 height: 70,
//                 width: 70,
//                 child: CircularProgressIndicator(
//                   color: myThemecolor.primaryColor1,
//                   value: (selectPage + 1) / 4,
//                   strokeWidth: 2,
//                 ),
//               ),
//               Container(
//                 width: 60,
//                 height: 60,
//                 margin:
//                     const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
//                 decoration: BoxDecoration(
//                     color: myThemecolor.primaryColor1,
//                     borderRadius: BorderRadius.circular(35)),
//                 child: IconButton(
//                   icon: Icon(
//                     Icons.navigate_next,
//                     color: myThemecolor.white,
//                   ),
//                   onPressed: () {
//                     if (selectPage < 3) {
//                       selectPage = selectPage + 1;

//                       controller.animateToPage(selectPage,
//                           duration: const Duration(milliseconds: 600),
//                           curve: Curves.ease);
//                       // controller.jumpToPage(selectPage);
//                       setState(() {});
//                     } else {
//                       // open welcome Screen
//                       print("open Welcome Screen");
//                     }
//                   },
//                 ),
//               ),
//             ],
//           ),
//         )
//       ]),
//     );
//   }
// }
