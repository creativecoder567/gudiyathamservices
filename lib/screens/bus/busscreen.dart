import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/controllers/MenuController.dart' as customMenu;
import 'package:news/screens/bus/bus_timings.dart';
import 'package:news/screens/home/home_screen.dart';

import '../../constants.dart';
import '../main/components/header.dart';
import '../main/components/side_menu.dart';
// import 'components/header.dart';
// import 'components/side_menu.dart';

class BusTimingsScreen extends StatelessWidget {
  final customMenu.MenuController _controller = Get.put(customMenu.MenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Header(),
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              child: SafeArea(child: BusTimings()),
            ),
          ],
        ),
      ),
    );
  }
}
