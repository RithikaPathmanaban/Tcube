import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';
// import 'package:kids_learning/Component/appBar.dart';
// import 'package:kids_learning/Component/drawer.dart';

// import 'package:kids_learning/views/Video_page.dart';
// import 'package:kids_learning/views/apps_pag.dart';
// import 'package:kids_learning/views/learn_page.dart';
// import 'package:kids_learning/views/story_page.dart';

import '../Component/appBar.dart';
import '../Component/navigation_bar.dart';
import 'learn_page.dart';

class grade2trainHomePage extends StatefulWidget {
  @override
  _grade2trainHomePageState createState() => _grade2trainHomePageState();
}

class _grade2trainHomePageState extends State<grade2trainHomePage> {
  int _indexPage = 0;
  List<Widget> _pages = [
    PageLearning(),
    // PageVideo(),
    // PageStory(),
    // PageApps(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(),
      // drawer: DrawerCustom(),
      body: _pages[_indexPage],
      // bottomNavigationBar: CustomNavigationBar(
      //   indexpage: _indexPage,
      //   onClock: (index) {
      //     setState(() {
      //       _indexPage = index;
      //     });
      // print('test');
      // },
      // ),
    );
  }
}