import 'package:flutter/material.dart';
import 'main.dart';

class CheckoutPage3 extends StatefulWidget {
  CheckoutPage3({Key key, this.title}) : super(key: key);
  final String title;

  _CheckoutPage3State createState() => _CheckoutPage3State();
}

class _CheckoutPage3State extends State<CheckoutPage3> {
  //Auction ending pop-up
  _showAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(
            "Checkout",
            style: TextStyle(
              color: Color(0xff707070),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: new Text(
            "Your box has been reserved. Pick up within 1 hour.",
            style: TextStyle(
              color: Color(0xff46e087),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Return home"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BottomNavBar()));
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Color(0xff46e087),
          title: new Text("Checkout"),
        ),
        body: Container(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                elevation: 3.0,
                child:
                    ListView(scrollDirection: Axis.vertical, children: <Widget>[
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: new EdgeInsets.fromLTRB(16, 16, 0, 4),
                          child: Text(
                            "Your winning box",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff707070),
                            ),
                          ),
                        ),
                        Container(
                          height: 180.0,
                          child: Row(children: <Widget>[
                            Container(
                              width: 180,
                              margin: EdgeInsets.fromLTRB(16, 0, 8, 8),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image(
                                    fit: BoxFit.contain,
                                    image:
                                        AssetImage('assets/produce_basket.jpg'),
                                  )),
                            ),
                            Expanded(
                                flex: 2,
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: new EdgeInsets.fromLTRB(
                                            4, 16, 8, 4),
                                        child: Text(
                                          "Fresh Produce",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xff707070),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            new EdgeInsets.fromLTRB(4, 8, 8, 4),
                                        child: Text(
                                          "Broccoli · Apples · Banana · Grapes · Bananas · French Beans · Asparagus · Carrots · Strawberries · Oranges",
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w300,
                                            color: Color(0xff707070),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            new EdgeInsets.fromLTRB(4, 8, 8, 4),
                                        child: Text(
                                          "1.5kg",
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Color(0xff707070),
                                          ),
                                        ),
                                      ),
                                    ]))
                          ]),
                        ),
                        Padding(
                          padding: new EdgeInsets.fromLTRB(16, 0, 8, 4),
                          child: Text(
                            "Location",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Color(0xff707070),
                            ),
                          ),
                        ),
                        Row(children: <Widget>[
                          Container(
                            width: 180,
                            margin: EdgeInsets.fromLTRB(16, 8, 8, 8),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image(
                                  fit: BoxFit.contain,
                                  image: AssetImage('assets/waitrose_map.png'),
                                )),
                          ),
                          Flexible(
                            child: Padding(
                              padding: new EdgeInsets.fromLTRB(4, 8, 8, 4),
                              child: Text(
                                "Waitrose, Admiral Park, Guernsey GY1 2AL",
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff707070),
                                ),
                              ),
                            ),
                          )
                        ]),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: new EdgeInsets.fromLTRB(16, 24, 8, 4),
                            child: Text(
                              "You pay £0.00",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Color(0xff707070),
                              ),
                            ),
                          ),
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Padding(
                                padding: new EdgeInsets.fromLTRB(16, 16, 8, 4),
                                child: FlatButton(
                                  color: Color(0xff46e087),
                                  textColor: Colors.white,
                                  disabledColor: Colors.grey,
                                  disabledTextColor: Colors.black,
                                  padding: EdgeInsets.fromLTRB(16, 16, 16, 16),
                                  splashColor: Color(0xff46e087),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  onPressed: () {
                                    _showAlertDialog();
                                  },
                                  child: Text(
                                    "CONFIRM PURCHASE",
                                    style: TextStyle(fontSize: 12.0),
                                  ),
                                ))),
                      ])
                ]))));
  }
}
