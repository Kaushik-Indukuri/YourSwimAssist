import 'package:flutter/material.dart';
import 'package:swimassist/models/constants.dart';
import 'package:swimassist/screens/home/swimming/compete/swim_compete.dart';
import 'package:swimassist/screens/home/swimming/learn/swim_learn.dart';
import 'package:swimassist/screens/home/swimming/workout/swim_workout.dart';


class Swimming extends StatefulWidget {
  @override
  _SwimmingState createState() => _SwimmingState();
}

class _SwimmingState extends State<Swimming> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            titleSpacing: 20,
            title: Padding(
              padding: EdgeInsets.only(top: 13.0),
              child: Text('Swimming',
                style: TextStyle(
                  fontFamily: 'NunitoExtraBold',
                  fontSize: 43.0,
                  color: Color(0xFF495057),
                ),
              ),
            ),
            centerTitle: false,
            backgroundColor: lightBackground,
            elevation: 0.0,
            bottom: new TabBar(
                controller: _tabController,
                indicatorColor: Colors.transparent,
                //labelColor: Color(0xFFC88D67),
                labelColor: Color(0xFF2a5298),
                isScrollable: true,
                labelPadding: EdgeInsets.only(right: 47.0, ),
                unselectedLabelColor: Color(0xFFCDCDCD),
                tabs: [
                  Tab(
                    child: Text('Learn',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 21.0,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Tab(
                    child: Text('Workout',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 21.0,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Tab(
                    child: Text('Compete',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          fontSize: 21.0,
                          fontWeight: FontWeight.bold,
                        )),
                  )
                ]),
          ),
          body: Container(
              height: MediaQuery.of(context).size.height - 50.0,
              width: double.infinity,
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    LearnSwim(),
                    SwimWorkout(),
                    SwimCompete(),
                  ]
              )
          )
      ),
    );
  }
}
