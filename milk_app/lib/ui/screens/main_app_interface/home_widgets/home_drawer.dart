import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeDrawer extends StatefulWidget {
  @override
  _HomeDrawerState createState() => _HomeDrawerState();
}

class _HomeDrawerState extends State<HomeDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 5.0,
      child: Container(
        alignment: Alignment.topRight,
        margin: EdgeInsets.symmetric(vertical: 80.0, horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                Icon(
                  Icons.person,
                  size: 50.0,
                ),
                SizedBox(width: 10.0,),
                _drawerOptions("My Profile")
              ],
            ),
            SizedBox(height: 30.0,),
            _drawerOptions("My Plan"),
            SizedBox(height: 570.0,),
            _drawerOptions("Logout")
          ],
        ),
      ),
    );
  }
  
  Widget _drawerOptions(String text) {
    return Container(
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
