import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:liftlog/common/before_after.dart';
import 'package:liftlog/common/color_extension.dart';
import 'package:liftlog/common/line_chart.dart';
import 'package:liftlog/common/pie_chart.dart';
import 'package:liftlog/common/radar_chart_sample1.dart';
import 'package:liftlog/common_widget/bottom_tab.dart';
import 'package:liftlog/screen/exercises/exercises_tab_view.dart';

import 'package:liftlog/screen/profile/complete_profile_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final CarouselController _controller = CarouselController();
  int selectTab = 0;
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index % listArr.length;
    });
  }

  List<Widget> listArr = [
    ExerciseTabView(),
    SingleChildScrollView(
      child: Column(children: [
        LineChartSample2(),
        PieChartSample2(),
        RadarChartSample1()
      ]),
    ),
    BeforeAfterPicPage(),
    CompleteProfilePage(),
  ];
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    // var media = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: myThemecolor.white,
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.all(0),
        child: Container(
          decoration: const BoxDecoration(color: Colors.white, boxShadow: [
            BoxShadow(
                color: Colors.black26, blurRadius: 2, offset: Offset(0, -2))
          ]),
          height: kToolbarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomTabWidget(
                icon: "assets/images/home.png",
                selectIcon: "assets/images/homebold.png",
                isActive: selectTab == 0,
                onTap: () {
                  selectTab = 0;
                  _selectedIndex = selectTab;
                  if (mounted) {
                    setState(() {});
                  }
                  _controller.animateToPage(_selectedIndex);
                },
              ),
              BottomTabWidget(
                icon: "assets/images/Activity.png",
                selectIcon: "assets/images/ActivitySelected.png",
                isActive: selectTab == 1,
                onTap: () {
                  selectTab = 1;
                  _selectedIndex = selectTab;
                  if (mounted) {
                    setState(() {});
                  }
                  _controller.animateToPage(_selectedIndex);
                },
              ),
              BottomTabWidget(
                icon: "assets/images/Camera.png",
                selectIcon: "assets/images/CameraSelected.png",
                isActive: selectTab == 2,
                onTap: () {
                  selectTab = 2;
                  _selectedIndex = selectTab;
                  if (mounted) {
                    setState(() {});
                  }
                  _controller.animateToPage(_selectedIndex);
                },
              ),
              BottomTabWidget(
                icon: "assets/images/Profile.png",
                selectIcon: "assets/images/ProfileSelected.png",
                isActive: selectTab == 3,
                onTap: () {
                  selectTab = 3;
                  _selectedIndex = selectTab;
                  if (mounted) {
                    setState(() {});
                  }
                  _controller.animateToPage(_selectedIndex);
                },
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              child: CarouselSlider(
                carouselController: _controller,
                items: listArr,
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  aspectRatio: 0.1,
                  viewportFraction: 1,
                  onScrolled: (value) {
                    setState(() {});
                  },
                  onPageChanged: (index, reason) {
                    setState(() {
                      selectTab == index;
                    });
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
