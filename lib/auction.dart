import 'package:flutter/material.dart';
import 'listing_item.dart';

class ListingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ListingPageState();
  }
}

class _ListingPageState extends State<ListingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color(0xff46e087),
        title: const Text("Auction"),
      ),
      body: new ListingItem(),
    );
  }
}
