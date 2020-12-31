import 'package:flutter/material.dart';
import 'package:swimassist/models/constants.dart';

class Nutrition extends StatefulWidget {
  @override
  _NutritionState createState() => _NutritionState();
}

class _NutritionState extends State<Nutrition> {

  nested() {
    return NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          SliverAppBar(
            expandedHeight: 150.0,
            backgroundColor: lightBackground,
            elevation: 1.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "Swimming",
                style: TextStyle(
                  fontFamily: 'OpenSansBold',
                  color: Colors.black,
                  fontSize: 30.0,
                ),
              ),
            ),
          )
        ];
      },
      body: Center(
        child: Text("The Parrot"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackground,
      body: nested(),
    );
  }
}
