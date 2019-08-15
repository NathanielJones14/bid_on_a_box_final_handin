import 'package:flutter/material.dart';
import 'Home_screen.dart';
import 'Tips_screen.dart';
import 'package:bid_on_a_box_final/Checkout_screen.dart';
import 'Bid_screen.dart';
import 'Recipes_screen.dart';
import 'utils/colours.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          brightness: Brightness.light,
          primaryColor: brand_01Color,
          accentColor: accent_01Color,
          buttonColor: brand_01Color,
          bottomAppBarColor: brand_01Color,
          scaffoldBackgroundColor: ui_01Color,
          fontFamily: 'Roboto',
          textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
          appBarTheme: AppBarTheme(
            textTheme: ThemeData.light().textTheme.copyWith(
                  title: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 28,
                  ),
                ),
          ),

          // To map the fonts from the team visual style guide
// in order to ensure consistency across development
// The font weights have been translated as follows:
// Heavy = W900
// Bold =  W700
// Medium = W500
// Regular = W400
// Light = W300

          primaryTextTheme: TextTheme(
            title: TextStyle(
                color: copy_02Color, fontWeight: FontWeight.w700, fontSize: 32),
            //AppBar Text
            headline: TextStyle(
                color: copy_02Color, fontWeight: FontWeight.w300, fontSize: 24),
            //Team names
            subtitle: TextStyle(
                color: copy_02Color, fontWeight: FontWeight.w300, fontSize: 18),

            subhead: TextStyle(
                color: copy_01Color, fontWeight: FontWeight.w300, fontSize: 16),

            body1: TextStyle(
                color: copy_01Color, fontWeight: FontWeight.w400, fontSize: 16),

            body2: TextStyle(
                color: copy_01Color, fontWeight: FontWeight.w300, fontSize: 14),

            display1: TextStyle(
                color: copy_01Color, fontWeight: FontWeight.w400, fontSize: 12),

            display2: TextStyle(
                color: copy_01Color, fontWeight: FontWeight.w400, fontSize: 12),

            button: TextStyle(
                color: copy_01Color,
                fontWeight: FontWeight.w300,
                fontSize: 10), //Button Text
          )),
      home: BottomNavBar()));
}

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 2;
  final _pageOption = [
    BidScreen(),
    CheckoutPage(),
    HomePage(),
    RecipesPage(),
    TipsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        color: Theme.of(context).bottomAppBarColor,
        items: <Widget>[
          Icon(Icons.gavel, size: 30),
          Icon(Icons.shopping_basket, size: 30),
          Icon(Icons.home, size: 30),
          Icon(Icons.restaurant_menu, size: 30),
          Icon(Icons.book, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: _pageOption[_page],
    );
  }
}
