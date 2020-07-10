import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milk_app/util/quotes.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List quotes_list = Quotes.quotes_list ;
  List images = Quotes.images_list ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: _drawer(),,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.white60,
        child: Column(
          children: <Widget>[
            _quotes(quotes_list, images),
          ],
        ),
      ),
    );
  }

  Widget _drawer() {
    return Drawer(
      elevation: 5.0,
      child: Container(
        alignment: Alignment.topRight,
        margin: EdgeInsets.symmetric(vertical: 80.0, horizontal: 30.0),
        child: Text("Hola pepsi cola"),
      ),
    );
  }

  Widget _quotes(List quotes_list, List images) {
    return Container(
      height: 300.0,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 2.0,
          );},
        separatorBuilder: (BuildContext context, int index) => SizedBox(width: 10.0,),
        itemCount: quotes_list.length,
      ),
    );
  }

}