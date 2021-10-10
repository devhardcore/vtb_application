import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_project/levels/second_note.dart';
import 'package:test_project/widgets/next_button.dart';
import 'package:test_project/widgets/score.dart';
import 'package:test_project/widgets/trade.dart';

class TradeScreen extends StatefulWidget {
  createState() => new _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.07, vertical: screenHeight * 0.05),
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: screenHeight * 0.04),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Куда вложить?",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 24,
                          )),
                      SizedBox(height: screenHeight * 0.03),
                      Score(score: "300")
                    ]),
                SizedBox(height: screenHeight * 0.03),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset('assets/images/5.png')),
                SizedBox(height: screenHeight * 0.035),
                Container(
                    width: screenWidth * 0.9,
                    child: Text(
                        "Давай выберем первый портфель акций и узнаем, что с ним станет через год",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                          fontSize: 16,
                        ))),
                SizedBox(height: screenHeight * 0.05),
                TicketButton(
                  key: PageStorageKey("."),
                  name: "VTB",
                  ticket: "VTBR",
                  cost: "0.55\$",
                  path: "assets/images/vtb.png",
                ),
                SizedBox(height: screenHeight * 0.02),
                TicketButton(
                  key: PageStorageKey("1"),
                  name: "Vipshop",
                  ticket: "VPSH",
                  cost: "15\$",
                  path: "assets/images/vp.png",
                ),
                SizedBox(height: screenHeight * 0.10),
                Align(
                    alignment: Alignment.center,
                    child: NextButton(
                        text: "Купить",
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => new TradeNote()),
                              (Route<dynamic> route) => false);
                        }))
              ],
            )
          ],
        ));
  }
}
