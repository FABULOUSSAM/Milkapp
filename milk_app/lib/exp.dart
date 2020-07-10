import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milk_app/animation/counter_animation.dart';

class Exp extends StatefulWidget {
  @override
  _ExpState createState() => _ExpState();
}

class _ExpState extends State<Exp> with SingleTickerProviderStateMixin {
//  AnimationController controller;
//  Animation animation;
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    controller = new AnimationController(
//      duration: const Duration(milliseconds: 3000),
//      vsync: this,
//    );
//    animation = new CurvedAnimation(parent: controller, curve: Curves.bounceIn)
//    ..addListener(() {
//      setState(() {
//
//      });
//    });
//    controller.forward();
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/backgorund.gif",
          height: 500.0,
          width: 300.0,
        ),
      )
    );
  }

//  @override
//  void dispose() {
//    controller.dispose();
//    super.dispose();
//  }

}
