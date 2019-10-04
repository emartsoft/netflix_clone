import 'package:flutter/material.dart';
import 'package:netflix_clone/components/dotwidget.dart';
import 'package:netflix_clone/styles/style_constants.dart';

class GenreContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text('Thriller', style: kGenreTextStyle,),
          DotWidget(),
          Text('Horror', style: kGenreTextStyle),
          DotWidget(),
          Text('Halloween Favourite', style: kGenreTextStyle),
          DotWidget(),
          Text('Scary', style: kGenreTextStyle),
          DotWidget(),
            Text('Dark', style: kGenreTextStyle),
        ],
        
      ),
    );
  }
}