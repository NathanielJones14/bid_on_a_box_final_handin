import 'package:flutter/material.dart';

class RecipeChicken extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Color(0xff46e087),
          title: new Text("Chicken Cream Cheese"),
        ),
        body: Container(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Container(
              alignment: Alignment.topCenter,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/recipe_chicken.png'),
                  )),
            ),
          ),
        ));
  }
}
