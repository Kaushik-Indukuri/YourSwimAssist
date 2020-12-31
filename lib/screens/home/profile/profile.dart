import 'package:flutter/material.dart';
import 'package:swimassist/models/constants.dart';
import 'package:swimassist/screens/authenticate/welcome.dart';
import 'package:swimassist/screens/home/swimming/learn/swim_learn.dart';
import 'package:swimassist/services/auth.dart';



class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  final AuthService _auth = AuthService();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: lightBackground,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: height/3.25+125,
                  //color: Colors.red,
                ),
                Container(
                  //color: Colors.blueGrey,
                  height: height/3.25,
                  width: double.infinity,
                  child: Image.asset("assets/profile_wave.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: height/3.5,
                  left: (width-125)/2,
                  child: Container(
                    height: 125,
                    child: Image.asset("assets/profile_design.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ],
            ),
            //SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 50,
                onPressed: () async{
                },
                color: Colors.blueGrey,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(left: 1),
                          child: Icon(Icons.person_outline, color: Colors.white, size: 30,)
                      ),
                      Text('Username', style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),),
                      Padding(
                          padding: EdgeInsets.only(right: 1),
                          child: Icon(Icons.arrow_forward_ios, color: Colors.white,)
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 50,
                onPressed: () async{
                },
                color: Colors.blueGrey,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(left: 1),
                          child: Icon(Icons.lock_outline, color: Colors.white, size: 30,)
                      ),
                      Text('Password', style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),),
                      Padding(
                          padding: EdgeInsets.only(right: 1),
                          child: Icon(Icons.arrow_forward_ios, color: Colors.white,)
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 50,
                onPressed: () async{
                },
                color: Colors.blueGrey,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(left: 1),
                          child: Icon(Icons.help_outline, color: Colors.white, size: 30,)
                      ),
                      Text('Help & Support', style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),),
                      Padding(
                          padding: EdgeInsets.only(right: 1),
                          child: Icon(Icons.arrow_forward_ios, color: Colors.white,)
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 5,),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: MaterialButton(
                minWidth: double.infinity,
                height: 50,
                onPressed: () async{
                  await _auth.signOut();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Welcome(),));
                },
                color: Colors.blueGrey,
                elevation: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.only(left: 1),
                          child: Icon(Icons.power_settings_new, color: Colors.white, size: 30,)
                      ),
                      Text('Logout', style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),),
                      Padding(
                          padding: EdgeInsets.only(right: 1),
                          child: Icon(Icons.arrow_forward_ios, color: Colors.white,)
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 25,),
          ],
        ),
      ),
    );
  }
}