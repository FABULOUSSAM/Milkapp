import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milk_app/ui/screens/main_app_interface/product_widgets/dates.dart';
import 'package:milk_app/ui/screens/main_app_interface/product_widgets/days.dart';
import 'package:milk_app/ui/screens/main_app_interface/product_widgets/product_details_and_qty.dart';
import 'package:milk_app/ui/screens/main_app_interface/product_widgets/product_images.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            ProductImages(),
            ProductDetailsAndQty(),
            _horizontalLine(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 17.5, vertical: 10.0),
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              child: Text("Description", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            _horizontalLine(),
            Days(),
            _horizontalLine(),
            Dates()
          ],
        ),
      ),
    );
  }
  Widget _horizontalLine() {
    return Container(
      height: 3.0,
      width: MediaQuery.of(context).size.width - 35.0,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(2.0)
      ),
    );
  }
}
