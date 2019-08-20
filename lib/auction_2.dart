import 'package:flutter/material.dart';
import 'listing_item_2.dart';

class ListingPage2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListingPage2State();
  }
}

class _ListingPage2State extends State<ListingPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff46e087),
        title: const Text("Auction"),
      ),
      body: new ListingItem2(),
    );
  }
}
