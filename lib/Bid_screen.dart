import 'package:flutter/material.dart';
import 'auction.dart';
import 'auction_2.dart';
import 'auction_3.dart';

class BidScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff46e087),
          title: const Text("Browse Auctions"),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Padding(
            padding: new EdgeInsets.fromLTRB(24, 16, 24, 4),
            child: Text(
              "Nearby Listings",
              style: TextStyle(
                color: Color(0xff707070),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(16, 4, 16, 16),
            height: 300,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 180.0,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 140,
                          margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image(
                                fit: BoxFit.contain,
                                image: AssetImage('assets/assorted_veg.png'),
                              )),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 4),
                          title: Text(
                            'Assorted Veg',
                            style: TextStyle(
                              color: Color(0xff707070),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'Sainsurys Dennison Road 1.5kg',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                        ),
                        new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                '£4-7',
                                style: TextStyle(
                                  color: Color(0xff46e087),
                                ),
                              ),
                              Text(
                                'Highest Bidder!',
                                style: TextStyle(
                                  color: Color(0xff46e087),
                                ),
                              ),
                            ]),
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          '5 minutes left',
                          style: TextStyle(
                            color: Color(0xfff486a4),
                            fontSize: 10,
                          ),
                        ),
                        FlatButton(
                          color: Color(0xff46e087),
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                          splashColor: Color(0xff46e087),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListingPage2()));
                          },
                          child: Text(
                            "VIEW",
                            style: TextStyle(fontSize: 12.0),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 180.0,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 140,
                          margin: EdgeInsets.fromLTRB(0, 8, 0, 4),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image(
                                fit: BoxFit.contain,
                                image: AssetImage('assets/produce_basket.jpg'),
                              )),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 4),
                          title: Text(
                            'Fresh Produce',
                            style: TextStyle(
                              color: Color(0xff707070),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'Lidl Priory Road 2.75kg',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                        ),
                        new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                '£6-8',
                                style: TextStyle(
                                  color: Color(0xfff2bd74),
                                ),
                              ),
                              Text(
                                'Bid now',
                                style: TextStyle(
                                  color: Color(0xff707070),
                                ),
                              ),
                            ]),
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          '30 minutes left',
                          style: TextStyle(
                            color: Color(0xfff2bd74),
                            fontSize: 10,
                          ),
                        ),
                        FlatButton(
                          color: Color(0xff46e087),
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                          splashColor: Color(0xff46e087),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListingPage3()));
                          },
                          child: Text(
                            "VIEW",
                            style: TextStyle(fontSize: 12.0),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 180.0,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 140,
                          margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/veg_box.jpg'),
                              )),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.fromLTRB(8, 0, 8, 4),
                          title: Text(
                            'Box of produce',
                            style: TextStyle(
                              color: Color(0xff707070),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          subtitle: Text(
                            'Asda Bodmin Superstore 1.8kg',
                            style: TextStyle(fontWeight: FontWeight.w300),
                          ),
                        ),
                        new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Text(
                                '£4-5',
                                style: TextStyle(
                                  color: Color(0xfff2bd74),
                                ),
                              ),
                              Text(
                                'Bid Now',
                                style: TextStyle(
                                  color: Color(0xff707070),
                                ),
                              ),
                            ]),
                        Spacer(
                          flex: 1,
                        ),
                        Text(
                          '1 minute left',
                          style: TextStyle(
                            color: Color(0xfff486a4),
                            fontSize: 10,
                          ),
                        ),
                        FlatButton(
                          color: Color(0xff46e087),
                          textColor: Colors.white,
                          disabledColor: Colors.grey,
                          disabledTextColor: Colors.black,
                          padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
                          splashColor: Color(0xff46e087),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListingPage()));
                          },
                          child: Text(
                            "VIEW",
                            style: TextStyle(fontSize: 12.0),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: new EdgeInsets.fromLTRB(24, 0, 24, 4),
            child: Text(
              "Supermarkets",
              style: TextStyle(
                color: Color(0xff707070),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.fromLTRB(16, 4, 16, 16),
              height: 180,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                Padding(
                  padding: new EdgeInsets.fromLTRB(4, 4, 4, 8),
                  child: Container(
                    width: 180.0,
                    child: Container(
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(16),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/Waitrose.jpg'),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: new EdgeInsets.fromLTRB(4, 4, 4, 8),
                  child: Container(
                    width: 180.0,
                    child: Container(
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(16),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/tesco.jpg'),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: new EdgeInsets.fromLTRB(4, 4, 4, 8),
                  child: Container(
                    width: 180.0,
                    child: Container(
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(16),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/Sainsburys.jpg'),
                          )),
                    ),
                  ),
                ),
                Padding(
                  padding: new EdgeInsets.fromLTRB(4, 4, 4, 8),
                  child: Container(
                    width: 180.0,
                    child: Container(
                      decoration: new BoxDecoration(
                        borderRadius: new BorderRadius.circular(16),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/Aldi.png'),
                          )),
                    ),
                  ),
                ),
              ]))
        ]));
  }
}
