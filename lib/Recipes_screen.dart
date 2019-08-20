import 'package:flutter/material.dart';

class RecipesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff46e087),
        title: new Text("Recipes"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
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
                        padding: new EdgeInsets.fromLTRB(0, 8, 0, 4),
                        child: Container(
                          width: 140,
                          alignment: Alignment.topLeft,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image(
                                fit: BoxFit.fill,
                                image:
                                    AssetImage('assets/chicken_jambalaya.jpg'),
                              )),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: new EdgeInsets.fromLTRB(16, 0, 8, 4),
                          child: Text(
                            "Chicken Jambalaya",
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
                        padding: new EdgeInsets.fromLTRB(0, 8, 0, 4),
                        child: Container(
                          width: 140,
                          alignment: Alignment.topLeft,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    'assets/chicken_cream_cheese.jpg'),
                              )),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: new EdgeInsets.fromLTRB(16, 0, 8, 4),
                          child: Text(
                            "Chicken with Cream Cheese",
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
                        padding: new EdgeInsets.fromLTRB(0, 8, 0, 4),
                        child: Container(
                          width: 140,
                          alignment: Alignment.topLeft,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/spring-lamb.jpg'),
                              )),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: new EdgeInsets.fromLTRB(16, 0, 8, 4),
                          child: Text(
                            "Spring Lamb with Chimichurri sauce",
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
                        padding: new EdgeInsets.fromLTRB(0, 8, 0, 4),
                        child: Container(
                          width: 140,
                          alignment: Alignment.topLeft,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    'assets/vege-tagine-with-apricot-quinoa.jpg'),
                              )),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: new EdgeInsets.fromLTRB(16, 0, 8, 4),
                          child: Text(
                            "Vege Tagine with Apricot Quinoa",
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
                        padding: new EdgeInsets.fromLTRB(0, 8, 0, 4),
                        child: Container(
                          width: 140,
                          alignment: Alignment.topLeft,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/bbq_lamb_pilaf.jpg'),
                              )),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: new EdgeInsets.fromLTRB(16, 0, 8, 4),
                          child: Text(
                            "Barbecued Lamb Pilaf",
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
                        padding: new EdgeInsets.fromLTRB(0, 8, 0, 4),
                        child: Container(
                          width: 140,
                          alignment: Alignment.topLeft,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    'assets/spanish-chicken-stew.jpg'),
                              )),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: new EdgeInsets.fromLTRB(16, 0, 8, 4),
                          child: Text(
                            "Spanish Chicken Stew",
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
                        padding: new EdgeInsets.fromLTRB(0, 8, 0, 4),
                        child: Container(
                          width: 140,
                          alignment: Alignment.topLeft,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                    'assets/raspberry-pistachio-lemon-curd-trifles.jpg'),
                              )),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: new EdgeInsets.fromLTRB(16, 0, 8, 4),
                          child: Text(
                            "Raspberry Pistachio and Lemon curd Trifles",
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
        ],
      ),
    );
  }
}
