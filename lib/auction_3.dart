import 'package:flutter/material.dart';
import 'listing_item_3.dart';

class ListingPage3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListingPage3State();
  }
}

class _ListingPage3State extends State<ListingPage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff46e087),
        title: const Text("Auction"),
      ),
      body: new ListingItem3(),
    );
  }
}
