import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:swimassist/models/constants.dart';


class SwimCompete extends StatefulWidget {
  @override
  _SwimCompeteState createState() => _SwimCompeteState();
}

class _SwimCompeteState extends State<SwimCompete> {

  List<DynamicWidget> listDynamic = [];

  addDynamic(){
    listDynamic.add(new DynamicWidget());
    print(listDynamic.length);
    setState(() {

    });
  }

  removeDynamic(){
    if(listDynamic.length < 2) {
      return;
    }
    listDynamic.removeLast();
    listDynamic.removeLast();
    print(listDynamic.length);
    addDynamic();
  }

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
                    child: Image.network('https://www.gogglesnmore.com/product_images/uploaded_images/swimming-officials-01.jpg',
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
                        Text('Swim', style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.white,
                          fontSize: 35,
                        ),),
                        Text('Meets', style: TextStyle(
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
                        Text('Personalized warmups', style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 23,
                        ),),
                        Text('and cooldowns', style: TextStyle(
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
            SizedBox(height: 15,),
            SizedBox(height: 20.0,),
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
            SizedBox(height: 20,),
            Container(
              height: 155,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: listDynamic.length,
                  itemBuilder: (_, index) => listDynamic[index]
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.only(left: 20),
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          gradient: greyGradient,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        left: 20.0,
                        top: 20.0,
                        child: IconButton(
                            padding: EdgeInsets.only(right: 10.0),
                            onPressed: removeDynamic,
                            icon: Icon(MdiIcons.minusCircleOutline,
                              size: 50,
                              color: Colors.blueGrey,)
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.only(left: 20),
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          gradient: greyGradient,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Positioned(
                        left: 20.0,
                        top: 20.0,
                        child: IconButton(
                            padding: EdgeInsets.only(right: 10.0),
                            onPressed: addDynamic,
                            icon: Icon(Icons.add_circle_outline,
                              size: 50,
                              color: Colors.blueGrey,)
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}



class DynamicWidget extends StatelessWidget {

  final _controller1 = TextEditingController();
  var age;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: EdgeInsets.only(left: 20, bottom: 5, right: 20),
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightGreen,
              ),
            ),
            Positioned(
              left: 38.0,
              bottom: 10.0,
              child: Column(
                children: <Widget>[
                  Text('Diving', style: TextStyle(
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    fontSize: 32,
                  ),),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(label, style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black87
        ),),
        SizedBox(height: 5,),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400])
            ),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400])
            ),
          ),
        ),
        SizedBox(height: 30,),
      ],
    );
  }
}