import 'package:flutter/material.dart';
//import 'Home_screen.dart';
import 'Bid_screen.dart';
import 'Explore_page.dart';
import 'For_You_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  int _page = 2;

  final _pageOption = [ExplorePage(), BidScreen(), ForYouPage()];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            color: Theme.of(context).bottomAppBarColor,
            items: <Widget>[
              Icon(Icons.pin_drop, size: 30),
              Icon(Icons.gavel, size: 30),
              Icon(Icons.person, size: 30),
            ],
            onTap: (index) {
              setState(() {
                _page = index;
              });
            }),
        body: _pageOption[_page]);
  }
}
