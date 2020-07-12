import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Dates extends StatefulWidget {
  @override
  _DatesState createState() => _DatesState();
}

class _DatesState extends State<Dates> {
  DateTime start_date_time = DateTime.now();
  DateTime end_date_time;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 17.5,vertical: 10.0),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              Text(
                "Start from: ",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10.0,),
              _startDate(context),
            ],
          ),
          SizedBox(width: 30.0,),
          Column(
            children: <Widget>[
              Text(
                "End At: ",
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 10.0,),
              _endDate(context)
            ],
          )
        ],
      ),
    );
  }

  Widget _startDate(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(8.0),
        alignment: Alignment.center,
        height: 80,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 3.0),
          borderRadius: BorderRadius.circular(15.0)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text(
              DateFormat("dd").format(start_date_time),
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(width: 8.0,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  DateFormat("MMM y").format(start_date_time),
                  style: TextStyle(
                    fontWeight: FontWeight.w600
                  ),
                ),
                Text(
                  DateFormat("EEEE").format(start_date_time),
                  style: TextStyle(
                    fontWeight: FontWeight.w100
                  ),
                )
              ],
            )
          ],
        ),
      ),
      onTap: () {
        showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2001),
          lastDate: DateTime(2021),
        ).then((date) {
          setState(() {
            start_date_time = date;
          });
        });
      },
    );
  }

  Widget _endDate(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.all(8.0),
        alignment: Alignment.center,
        height: 80,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey, width: 3.0),
            borderRadius: BorderRadius.circular(15.0)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Text(end_date_time == null? "-":
              DateFormat("dd").format(end_date_time) ,
              style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(width: 8.0,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(end_date_time == null? "":
                  DateFormat("MMM y").format(end_date_time),
                  style: TextStyle(
                      fontWeight: FontWeight.w600
                  ),
                ),
                Text(end_date_time == null? "":
                  DateFormat("EEEE").format(end_date_time),
                  style: TextStyle(
                      fontWeight: FontWeight.w100
                  ),
                )
              ],
            )
          ],
        ),
      ),
      onTap: () {
        showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(2001),
          lastDate: DateTime(2021),
        ).then((date) {
          setState(() {
            end_date_time = date;
          });
        });
      },
    );
  }

}
