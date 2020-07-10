import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milk_app/ui/screens/login.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenUI extends StatefulWidget {
  @override
  _SplashScreenUIState createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: SplashScreen(
          title: Text(
              "Milk Mobile App"
          ),
          loadingText: Text("Milk Mobile App"),
          seconds: 8,
          backgroundColor: Colors.white,
          loaderColor: Colors.white,
          image: Image.asset(
            'assets/images/sugoi.gif',
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter,
          ),
          photoSize: 100.0,
          navigateAfterSeconds: Login(),
        ),
      ),
    );
  }
}
