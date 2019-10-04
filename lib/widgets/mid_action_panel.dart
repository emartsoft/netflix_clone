import 'package:flutter/material.dart';
import 'package:netflix_clone/styles/style_constants.dart';

class MidActionPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Column(
            children: <Widget>[
              Icon(
                Icons.add,
                color: Colors.white,
              ),
              Text(
                ' My List',
                style: kMainTextStyle,
              ),
            ],
          ),
        ),
        RaisedButton.icon(
          color: Colors.white,
          icon: Icon(
            Icons.play_arrow,
            color: Colors.black,
            size: 30.0,
          ),
          label: Text(
            'Play',
            style: kPlayTextStyle,
          ),
          onPressed: () {},
        ),
        FlatButton(
          onPressed: () {},
          child: Column(
            children: <Widget>[
              Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              Text(
                'Info',
                style: kMainTextStyle,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
