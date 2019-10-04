import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:netflix_clone/styles/style_constants.dart';
import 'package:netflix_clone/widgets/bottom_tab_bar.dart';
import 'package:netflix_clone/widgets/genre_row.dart';
import 'package:netflix_clone/widgets/mid_action_panel.dart';
import 'package:netflix_clone/widgets/sliverapp_bar.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, initialIndex: 0, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      left: false,
      right: false,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: NetflixTabBar(
          controller: controller,
        ),
        body: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              child: Image.asset(
                'assets/poster2.jpg',
                colorBlendMode: BlendMode.softLight,
                fit: BoxFit.fitWidth,
                width: double.infinity,
              ),
            ),
            Positioned(
              top: 490,
              left: 0,
              right: 0,
              bottom: 0,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 0.1, sigmaY: 0.1),
                child: Container(
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ),
            Positioned(
              top: height * 0.68,
              child: Center(
                child: Container(
                  width: width * 0.95,
                  height: 55,
                  child: MidActionPanel(),
                ),
              ),
            ),
            Positioned(
              top: height * 0.6,
              child: Center(
                child: Container(
                  //color: Colors.white.withOpacity(0.1),
                  width: width * 0.95,
                  height: 50,
                  child: GenreContent(),
                ),
              ),
            ),
            Positioned(
              top: 0,
              child: CustomAppBar(),
            ),
          ],
        ),
      ),
    );
  }
}
