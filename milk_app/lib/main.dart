import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:milk_app/exp2.dart';
import 'package:milk_app/ui/app_ui.dart';
import 'package:http/http.dart' as http;

import 'exp.dart';

void main() => runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animations',
      theme:ThemeData.dark(),
      home: AppUi(),
    )
);


