import 'package:flutter/material.dart';
import 'package:rounded_floating_app_bar/rounded_floating_app_bar.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(20)),
            Container(
              padding: EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              child: Text(
                "Dashboard",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Text(
                  "Today's tasks",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 160),
                ),
                Icon(
                  Icons.arrow_right,
                  color: Colors.red[400],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(15),
            ),
            SingleChildScrollView(
              padding: EdgeInsets.all(20),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: new BoxDecoration(
                      color: Colors.red[400],
                      borderRadius: new BorderRadius.all(Radius.circular(15.0)),
                    ),
                    height: 200,
                    width: 200,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Branding Studio",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Text(
                          "Homepage design",
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "70%",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        LinearPercentIndicator(
                          width: 160.0,
                          lineHeight: 5.0,
                          percent: 0.7,
                          progressColor: Colors.black87,
                          backgroundColor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  Container(
                    decoration: new BoxDecoration(
                      color: Colors.blue,
                      borderRadius: new BorderRadius.all(Radius.circular(15.0)),
                    ),
                    height: 200,
                    width: 200,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Automotive Shop",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Text(
                          "Checkout wireframes",
                          softWrap: true,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(padding: EdgeInsets.all(20)),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "45%",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.start,
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(5)),
                        LinearPercentIndicator(
                          width: 160.0,
                          lineHeight: 5.0,
                          percent: 0.45,
                          progressColor: Colors.black87,
                          backgroundColor: Colors.white,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Text(
                  "Open Projects",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 160),
                ),
                Icon(
                  Icons.arrow_right,
                  color: Colors.red[400],
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
