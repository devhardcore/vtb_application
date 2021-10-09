import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final String score;

  const Score({
    Key key = const PageStorageKey("..."),
    this.score = "0",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Text(score,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.green,
              fontSize: 18,
            )),
        Text("\$",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.black,
              fontSize: 18,
            )),
      ],
    );
  }
}
