import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:swimassist/models/constants.dart';
import 'package:swimassist/screens/home/swimming/swimming.dart';
import 'package:swimassist/screens/home/nutrition/nutrition.dart';
import 'package:swimassist/screens/home/profile/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _currentIndex = 0;

  final tabs = [
    Swimming(),
    Nutrition(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackground,
      body: tabs[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          color: Colors.blue[600].withOpacity(0.75),
        ),
        padding: const EdgeInsets.all(1),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0.0,
          backgroundColor: Colors.blue[600].withOpacity(0.0),
          unselectedItemColor: Colors.grey[400],
          selectedItemColor: Color(0xFF2a5298),
          items: [
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.water, size: 30,),
              title: Text(''),
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.nutrition, size: 30,),
              title: Text(''),
              backgroundColor: Colors.greenAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 30,),
              title: Text(''),
              backgroundColor: Colors.deepPurpleAccent,
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
