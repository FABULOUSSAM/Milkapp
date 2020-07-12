import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:milk_app/ui/screens/main_app_interface/home.dart';
import 'package:milk_app/ui/screens/signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: <Widget>[
                _image(),
                Text("Login:"),
                SizedBox(height: 10.0,),
                _textField(
                  Icon(FontAwesomeIcons.mobile),
                  "Enter Mobile Number",
                  TextInputType.phone
                ),
                SizedBox(height: 10.0,),
                _textField(
                  Icon(FontAwesomeIcons.lock),
                  "Passsword",
                  TextInputType.text
                ),
                SizedBox(height: 20.0),
                _button("Login"),
                SizedBox(height: 10.0,),
                _button("Signup")
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _image() {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: Image.asset(
        "assets/images/milk_splash_screen.png",
        height: 100.0,
        width: 100.0,
      ),
    );
  }

  Widget _textField(Icon icon, String text, TextInputType type) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        keyboardType: type,
        decoration: InputDecoration(
          labelText: text,
          prefixIcon: icon,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
            )
        ),
      ),
    );
  }

  Widget _button(String text) {
    return InkWell(
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 30.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)
        ),
        elevation: 5.0,
        child: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Colors.lightBlueAccent.shade200,
          ),
          child: Text(text, style: TextStyle(color: Colors.white),),
        ),
      ),
      onTap: () {
        if (text == "Login")
        {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Home()
              )
          );
        }
        else {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SignUp()
              )
          );
        }
      },
    );
  }
}

