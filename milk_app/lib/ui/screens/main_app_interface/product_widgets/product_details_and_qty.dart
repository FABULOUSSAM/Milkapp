import 'package:flutter/material.dart';
import 'package:milk_app/exp.dart';

class ProductDetailsAndQty extends StatefulWidget {
  @override
  _ProductDetailsAndQtyState createState() => _ProductDetailsAndQtyState();
}

class _ProductDetailsAndQtyState extends State<ProductDetailsAndQty> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Milk Name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0
                ),
              ),
              SizedBox(height: 5.0,),
              Text("₹Price")
            ],
          ),
          _qtyButtons()
        ],
      ),
    );
  }

  Widget _qtyButtons() {
    return Container(
      width: 100.0,
      height: 35.0,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(5.0)
      ),
    );
  }
}
