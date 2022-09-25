import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:myanmar_sar_kyi_tite/helpers/constants.dart';
import 'package:myanmar_sar_kyi_tite/pages/about.dart';
import 'package:myanmar_sar_kyi_tite/pages/authors.dart';
import 'package:myanmar_sar_kyi_tite/pages/books.dart';
import 'package:myanmar_sar_kyi_tite/pages/home.dart';
import 'package:myanmar_sar_kyi_tite/pages/library.dart';
import 'package:myanmar_sar_kyi_tite/pages/register.dart';

import '../controller/dashboard_controller.dart';
import '../helpers/bottom_nav.dart';

class MyDashBoard extends StatefulWidget {
  @override
  _MyDashBoardState createState() => _MyDashBoardState();
}

class _MyDashBoardState extends State<MyDashBoard> {
  final _inactiveColor = Colors.grey;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) {
        return Scaffold(
            body: IndexedStack(
              index: controller.tabIndex,
              children: const [
                Home(),
                // Authors(),
                Register(),
                Books(),
                Library(),
                About(),
              ],
            ),
            bottomNavigationBar: CustomAnimatedBottomBar(
              containerHeight: 50.h,
              backgroundColor: Constants.text_white,
              selectedIndex: controller.tabIndex,
              showElevation: true,
              itemCornerRadius: 24.r,
              curve: Curves.easeIn,
              onItemSelected: (index) =>
                  setState(() => controller.changeTabIndex(index)),
              items: <BottomNavyBarItem>[
                BottomNavyBarItem(
                  icon: Icon(Icons.apps),
                  title: Text(
                    'Home',
                    style: TextStyle(fontSize: Constants.smallText),
                  ),
                  activeColor: Constants.primary,
                  inactiveColor: _inactiveColor,
                  textAlign: TextAlign.center,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.people),
                  title: Text(
                    'Authors',
                    style: TextStyle(fontSize: Constants.smallText),
                  ),
                  activeColor: Constants.primary,
                  inactiveColor: _inactiveColor,
                  textAlign: TextAlign.center,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.book),
                  title: Text(
                    'Books ',
                    style: TextStyle(fontSize: Constants.smallText),
                  ),
                  activeColor: Constants.primary,
                  inactiveColor: _inactiveColor,
                  textAlign: TextAlign.center,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.local_library),
                  title: Text(
                    'Library',
                    style: TextStyle(fontSize: Constants.smallText),
                  ),
                  activeColor: Constants.primary,
                  inactiveColor: _inactiveColor,
                  textAlign: TextAlign.center,
                ),
                BottomNavyBarItem(
                  icon: Icon(Icons.info),
                  title: Text(
                    'About',
                    style: TextStyle(fontSize: Constants.smallText),
                  ),
                  activeColor: Constants.primary,
                  inactiveColor: _inactiveColor,
                  textAlign: TextAlign.center,
                ),
              ],
            ));
      },
    );
  }
}
