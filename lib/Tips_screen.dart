import 'package:flutter/material.dart';

class TipsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Color(0xff46e087),
          title: new Text("Tips to reduce waste"),
        ),
        body: ListView(scrollDirection: Axis.vertical, children: <Widget>[
          Padding(
            padding: new EdgeInsets.fromLTRB(8, 8, 8, 4),
            child: Container(
              height: 140.0,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: new EdgeInsets.fromLTRB(16, 8, 0, 4),
                        child: Container(
                          width: 140,
                          alignment: Alignment.topLeft,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/love_food.jpg'),
                              )),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: new EdgeInsets.fromLTRB(16, 0, 8, 4),
                          child: Text(
                            "Hints, tips and recipes to reduce your food waste",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color(0xff707070),
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Padding(
            padding: new EdgeInsets.fromLTRB(8, 0, 8, 4),
            child: Container(
              height: 140.0,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: new EdgeInsets.fromLTRB(16, 16, 0, 4),
                        child: Container(
                          width: 140,
                          alignment: Alignment.centerLeft,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/think_eat_save.jpg'),
                              )),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: new EdgeInsets.fromLTRB(16, 0, 8, 4),
                          child: Text(
                            "Eat sustainably and healthily for less",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color(0xff707070),
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
          Padding(
            padding: new EdgeInsets.fromLTRB(8, 0, 8, 4),
            child: Container(
              height: 140.0,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: new EdgeInsets.fromLTRB(16, 16, 0, 4),
                        child: Container(
                          width: 140,
                          alignment: Alignment.centerLeft,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/wrap.png'),
                              )),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: new EdgeInsets.fromLTRB(16, 0, 8, 4),
                          child: Text(
                            "Circular Economy and Food Waste research and campaigns",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Color(0xff707070),
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          )
        ]));
  }
}
