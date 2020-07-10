import 'package:flutter/material.dart';
import 'package:milk_app/ui/screens/splash_screen.dart';

class AppUi extends StatefulWidget {
  @override
  _AppUiState createState() => _AppUiState();
}

class _AppUiState extends State<AppUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: SplashScreenUI(),
          ),
        ],
      ),
    );
  }
}

