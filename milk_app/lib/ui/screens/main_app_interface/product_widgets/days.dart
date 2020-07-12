import 'package:flutter/material.dart';

class Days extends StatefulWidget {
  @override
  _DaysState createState() => _DaysState();
}

class _DaysState extends State<Days> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 17.5, vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Days", style: TextStyle(fontWeight: FontWeight.bold),),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _buttons("Daily"),
              _buttons("Alternate Days"),
              _buttons("Select Days")
            ],
          )
        ],
      ),
    );
  }
  Widget _buttons(String text) {
    return InkWell(
      child: Container(
        alignment: Alignment.center,
        height: 35.0,
        width: 110.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
      onTap: () {

      },
    );
  }
}
