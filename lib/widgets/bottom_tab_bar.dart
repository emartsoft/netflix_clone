import 'package:flutter/material.dart';

class NetflixTabBar extends StatelessWidget {
  const NetflixTabBar({
    Key key,
    @required this.controller,
  }) : super(key: key);

  final TabController controller;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelStyle: TextStyle(
        fontSize: 12.0,
      ),
      indicatorWeight: 0.5,
      controller: controller,
      unselectedLabelColor: Colors.white.withOpacity(0.4),
      labelPadding: EdgeInsets.symmetric(horizontal: 4.0),
      tabs: <Widget>[
        Tab(
          text: 'Home',
          icon: Icon(Icons.home),
        ),
        Tab(
          text: 'Search',
          icon: Icon(Icons.search),
        ),
        Tab(
          text: 'Coming Soon',
          icon: Icon(Icons.ondemand_video),
        ),
        Tab(
          text: 'Downloads',
          icon: Icon(Icons.file_download),
        ),
        Tab(
          text: 'More',
          icon: Icon(Icons.menu),
        ),
      ],
    );
  }
}
