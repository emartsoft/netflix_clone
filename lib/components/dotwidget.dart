import 'package:flutter/material.dart';

class DotWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 5, right: 5),
          child: Text(
            '·',
            style: TextStyle(
              color: Colors.red,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
