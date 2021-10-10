import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketButton extends StatefulWidget {
  final String name;
  final String path;
  final String ticket;
  final String cost;

  const TicketButton({
    Key key = const PageStorageKey("..."),
    this.name = "...",
    required this.path,
    required this.ticket,
    required this.cost,
  }) : super(key: key);

  createState() => new _TicketButtonState();
}

class _TicketButtonState extends State<TicketButton> {
  Color _colorContainer = Colors.black;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
        onTap: () {
          setState(() {
            if (_colorContainer == Colors.black) {
              _colorContainer = Colors.blue;
            } else
              _colorContainer = Colors.black;
          });
        },
        child: Container(
          alignment: Alignment.center,
          // The wrapper for the entire widget.
          padding: EdgeInsets.only(
            left: screenWidth * 0.05,
            right: screenWidth * 0.05,
          ),
          width: screenWidth * 0.8,
          height: screenHeight * 0.1,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.05),
                spreadRadius: 4,
                blurRadius: 4,
                offset: Offset(0, 2),
              )
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),

          child: Row(
            // Main column
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  Image.asset(
                    widget.path,
                  ),
                  SizedBox(width: screenWidth * 0.03),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.name,
                        style: TextStyle(
                            color: _colorContainer,
                            fontWeight: FontWeight.w600,
                            fontSize: 16),
                      ),
                      Text(
                        widget.ticket,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                ],
              ),
              Text(widget.cost),
            ],
          ),
        ));
  }
}
