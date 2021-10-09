import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const SelectButton({
    Key key = const PageStorageKey("..."),
    this.text = "...",
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return ElevatedButton(
        child: Text(text,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF263238))),
        style: ElevatedButton.styleFrom(
            fixedSize: Size(screenWidth * 0.38, screenHeight * 0.07),
            shape: StadiumBorder(),
            primary: const Color(0xFFFBFBFC)),
        onPressed: () => onPressed());
  }
}
