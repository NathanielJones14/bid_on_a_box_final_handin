import 'package:flutter/material.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:quiver/async.dart';
import 'package:bid_on_a_box_final/Checkout_screen.dart';

class ListingItem extends StatefulWidget {
  ListingItem({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ListingItemState createState() => _ListingItemState();
}

class _ListingItemState extends State<ListingItem> {
  double _currentBid = 2.30;

  int _start = 10;
  int _current = 10;

  void startTimer() {
    CountdownTimer countDownTimer = new CountdownTimer(
      new Duration(seconds: _start),
      new Duration(seconds: 1),
    );

    var sub = countDownTimer.listen(null);
    sub.onData((duration) {
      setState(() {
        _current = _start - duration.elapsed.inSeconds;
      });
    });

    sub.onDone(() {
      setState(() {
        _showAlertDialog();
      });
    });
  }

  //Auction ending pop-up
  _showAlertDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(
            "Bidding ended",
            style: TextStyle(
              color: Color(0xff707070),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: new Text(
            "You have won!",
            style: TextStyle(
              color: Color(0xff46e087),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Checkout"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CheckoutPage()));
              },
            ),
          ],
        );
      },
    );
  }

  //Submit bid popup
  _showDialog() {
    showDialog(
      context: context,
      child: new NumberPickerDialog.decimal(
          minValue: 1,
          maxValue: 10,
          decimalPlaces: 2,
          title: new Text(
            "Submit a bid",
            style: TextStyle(
              color: Color(0xff707070),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          initialDoubleValue: _currentBid),
    ).then((value) {
      if (value != null) {
        setState(() => _currentBid = value);
      }
    });
  }

  final topImage = new Container(
    height: 260,
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          margin: EdgeInsets.fromLTRB(24, 24, 8, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              width: 320,
              child: Image(
                image: AssetImage('assets/veg_box.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(8, 24, 24, 0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Container(
              width: 320,
              child: Image(
                image: AssetImage('assets/asda_superstore.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
            padding: EdgeInsets.fromLTRB(8, 16, 8, 16),
            height: 660,
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                ),
                elevation: 3.0,
                child: ListView(children: <Widget>[
                  new Column(children: <Widget>[
                    topImage,
                    Container(
                        height: 260,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: new EdgeInsets.fromLTRB(24, 16, 24, 4),
                                child: Text(
                                  "Box of Produce",
                                  style: TextStyle(
                                    color: Color(0xff707070),
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: new EdgeInsets.fromLTRB(24, 4, 24, 4),
                                child: Text(
                                  "Asda Bodmin Superstore · 1.8kg",
                                  style: TextStyle(
                                    color: Color(0xff707070),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: new EdgeInsets.fromLTRB(24, 4, 24, 4),
                                child: Text(
                                  "Pepper · Squash · Asparagus · Grapes · Apples · Radishes · Mushrooms · Carrots · Cabbage · Pak Choi",
                                  style: TextStyle(
                                    color: Color(0xff707070),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: new EdgeInsets.fromLTRB(24, 12, 24, 4),
                                child: Text(
                                  "Bidding Estimate:  £4-5",
                                  style: TextStyle(
                                    color: Color(0xff707070),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: new EdgeInsets.fromLTRB(24, 12, 24, 4),
                                child: Text(
                                  'Your bid: £$_currentBid',
                                  style: TextStyle(
                                    color: Color(0xff707070),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ]))
                  ]),
                  Padding(
                    padding: new EdgeInsets.fromLTRB(24, 0, 24, 4),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.timer,
                            size: 16,
                            color: Color(0xfff486a4),
                          ),
                          Container(
                            width: 8,
                          ),
                          Text(
                            "$_current",
                            style: TextStyle(
                              color: Color(0xfff486a4),
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ]),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: FlatButton(
                      color: Color(0xff46e087),
                      textColor: Colors.white,
                      disabledColor: Colors.grey,
                      disabledTextColor: Colors.black,
                      padding: EdgeInsets.fromLTRB(40, 16, 40, 16),
                      splashColor: Color(0xff46e087),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      onPressed: () {
                        _showDialog();
                        startTimer();
                      },
                      child: Text(
                        "PLACE BID",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  Container(
                    height: 30,
                  ),
                ]))));
  }
}
