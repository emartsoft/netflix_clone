import 'package:flutter/material.dart';
import 'package:netflix_clone/styles/style_constants.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              'assets/netflix.png',
              scale: 15.0,
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                child: Text(
                  'TV Shows',
                  style: kMainTextStyle,
                ),
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: FlatButton(
                  child: Text(
                    'Movies',
                    style: kMainTextStyle,
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding:const EdgeInsets.only(left: 25.0),
                child: FlatButton(
                  child: Text(
                    'My List',
                    style: kMainTextStyle,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
