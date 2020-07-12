import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milk_app/ui/screens/main_app_interface/product.dart';

class ProductsListView extends StatefulWidget {
  @override
  _ProductsListViewState createState() => _ProductsListViewState();
}

class _ProductsListViewState extends State<ProductsListView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 432,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0)
              ),
              elevation: 2.0,
              child: Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                height: 100.0,
                child: Text("Hello"),
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Product()
                  )
              );
            },
          );
        },
      ),
    );
  }
}
