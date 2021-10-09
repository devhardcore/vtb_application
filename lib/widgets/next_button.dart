import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  final String text;
  final Function onPressed;

  const NextButton({
    Key key = const PageStorageKey("..."),
    this.text = "Дальше",
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return ElevatedButton(
        child: Text(text, style: TextStyle(fontSize: 16)),
        style: ElevatedButton.styleFrom(
            fixedSize: Size(screenWidth * 0.50, screenHeight * 0.07),
            shape: StadiumBorder(),
            primary: const Color(0xFF3A83F1)),
        onPressed: () => onPressed());
  }
}
