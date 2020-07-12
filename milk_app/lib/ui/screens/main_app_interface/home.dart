import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milk_app/ui/screens/main_app_interface/home_widgets/home_quotes_list_view.dart';
import 'package:milk_app/util/quotes.dart';
import 'package:milk_app/ui/screens/main_app_interface/home_widgets/home_drawer.dart';
import 'package:milk_app/ui/screens/main_app_interface/home_widgets/produts_list_view.dart';


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
      drawer: HomeDrawer(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 80.0,
            color: Colors.white.withOpacity(1.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10.0,),
                QuotesListView(quotes_list: quotes_list, images: images,),
                Container(
                  margin: EdgeInsets.all(10.0),
                  child: Text("Products: ", style: TextStyle(color: Colors.black),),
                ),
                ProductsListView(),
              ],
            ),
          ),
        ],
      )
    );
  }

}