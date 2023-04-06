import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news/controllers/MenuController.dart';
import 'package:news/screens/bus/bus_timings.dart';
import 'package:news/screens/bus/busscreen.dart';
import 'package:news/screens/contact/contactform.dart';
import 'package:news/screens/home/home_screen.dart';

import '../../constants.dart';
import '../main/components/header.dart';
import '../main/components/side_menu.dart';
// import 'components/header.dart';
// import 'components/side_menu.dart';

class ContactScreen extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());
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
              child: SafeArea(child:ContactForm(),),
            ),
          ],
        ),
      ),
    );
  }
}
