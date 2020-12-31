import 'package:flutter/material.dart';
import 'package:swimassist/models/constants.dart';

class LearnBackstroke extends StatefulWidget {
  @override
  _LearnBackstrokeState createState() => _LearnBackstrokeState();
}

class _LearnBackstrokeState extends State<LearnBackstroke> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: lightBackground,
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Color(0xFF9e2a2b).withOpacity(0.4),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black,),
        ),
      ),
      body: Container(
        height: height/4,
        decoration: BoxDecoration(
          color: Color(0xFF9e2a2b).withOpacity(0.4),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(25),
            bottomLeft: Radius.circular(25),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 13, bottom: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("Learn", style: TextStyle(
                    fontFamily: 'NunitoExtraBold',
                    fontSize: 42.0,
                    color: Colors.white,
                  ),),
                  Text("Backstroke", style: TextStyle(
                    fontFamily: 'NunitoExtraBold',
                    fontSize: 42.0,
                    color: Colors.white,
                  ),),
                ],
              ),
            ),
            Hero(
              tag: 4,
              child: Container(
                margin: EdgeInsets.only(bottom:30),
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/backstroke.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
