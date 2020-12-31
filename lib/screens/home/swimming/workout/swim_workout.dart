import 'package:flutter/material.dart';
import 'package:swimassist/models/constants.dart';


class SwimWorkout extends StatefulWidget {
  @override
  _SwimWorkoutState createState() => _SwimWorkoutState();
}

class _SwimWorkoutState extends State<SwimWorkout> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: lightBackground,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(height: 18,),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image(
                      height: 215.0,
                      width: width-40,
                      image: AssetImage('assets/WorkoutPlanBknd.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 30.0,
                    top: 20.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Workout', style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: 35,
                        ),),
                        Text('Library', style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: 35,
                        ),),
                        SizedBox(height: 10,),
                        Container(
                          height: 4,
                          width: 150,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10,),
                        Text('Select your workout', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 23,
                        ),),
                        Text('for the day', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 23,
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 35,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 23.0),
                  child: Text("Health Benefits of Swimming",
                    style: TextStyle(
                      fontFamily: 'NunitoExtraBold',
                      fontSize: 20.0,
                      color: Color(0xFF495057),
                    ),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      Card(
                        margin: EdgeInsets.only(top: 7.0, bottom: 10.0, left: 20.0),
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.network('https://i.gifer.com/Kt1C.gif',
                                  fit: BoxFit.contain,
                                  height: 215.0,
                                  width: width-100,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 30.0,
                              bottom: 28.0,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Know more',
                                    style: TextStyle(
                                      fontFamily: 'Avenir',
                                      fontSize: 18,
                                      color: secondaryTextColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: secondaryTextColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(top: 7.0, bottom: 10.0, left: 20.0),
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.network('https://i.pinimg.com/originals/bb/43/44/bb4344efd68b7eff9c231e8a4b4a6164.gif',
                                  fit: BoxFit.contain,
                                  height: 215.0,
                                  width: width-100,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 30.0,
                              bottom: 28.0,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Know more',
                                    style: TextStyle(
                                      fontFamily: 'Avenir',
                                      fontSize: 18,
                                      color: secondaryTextColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: secondaryTextColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(top: 7.0, bottom: 10.0, left: 20.0),
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.network('https://i.pinimg.com/originals/c5/4d/17/c54d17cc71c864c791a341e334549195.gif',
                                  fit: BoxFit.contain,
                                  height: 215.0,
                                  width: width-100,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 30.0,
                              bottom: 28.0,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Know more',
                                    style: TextStyle(
                                      fontFamily: 'Avenir',
                                      fontSize: 18,
                                      color: secondaryTextColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: secondaryTextColor,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.only(top: 7.0, bottom: 10.0, left: 20.0, right: 20.0),
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Stack(
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.network('https://i.pinimg.com/originals/89/40/6c/89406c40596429c5cd6e288d8ab14be0.gif',
                                  fit: BoxFit.contain,
                                  height: 215.0,
                                  width: width-100,
                                ),
                              ),
                            ),
                            Positioned(
                              left: 30.0,
                              bottom: 28.0,
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Know more',
                                    style: TextStyle(
                                      fontFamily: 'Avenir',
                                      fontSize: 18,
                                      color: secondaryTextColor,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: secondaryTextColor,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 107,
                              left: 10,
                              child: Container(
                                height: 2,
                                width: width-110,
                                color: Color(0xFF1982c4).withOpacity(0.45),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 35.0,),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.network('https://s3.amazonaws.com/bw-d132c74defa34e9f47fd52b3dc69779c-bwcore/032018/swim_woman_stroke_under_copy.jpg',
                      height: 215.0,
                      width: width-40,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 30.0,
                    top: 20.0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Swimming', style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: 35,
                        ),),
                        Text('Plans', style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: 35,
                        ),),
                        SizedBox(height: 10,),
                        Container(
                          height: 4,
                          width: 160,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10,),
                        Text('Long term workout routines', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 23,
                        ),),
                        Text('personlized for you', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 23,
                        ),),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}