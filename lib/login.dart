import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fluttertoast/fluttertoast.dart';

//informational page to gather user data
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  static const TextStyle hintStyle = TextStyle(color: Color(0xff4c4c58), fontSize: 18);

  @override
  Widget build(BuildContext context) {
    double unitHeightValue = MediaQuery.of(context).size.width * 0.001;
    double iconSize = unitHeightValue*50;
    TextStyle questStyle = TextStyle(fontSize: unitHeightValue*40);
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff000000),
      appBar: AppBar(
        title: const Text(
          'Sign In',
          style: TextStyle(fontSize: 30),

        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 10, left: 20,right: 20),
                child: Text(
                    'Username',
                    style: questStyle
                )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: SizedBox(
                  height: 40,
                  child: TextField(
                    onChanged: (text) {

                    },
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(

                      contentPadding: EdgeInsets.all(0),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffaeb1b9), width: 1.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffaeb1b9), width: 1.0),
                      ),
                      hintStyle: hintStyle,
                    ),
                  )
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 15.0, left: 20, bottom: 15, right: 20),
                child: Text(
                  'Password',
                  style: questStyle,
                )
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20, right:20, bottom: 10),
                child: SizedBox(
                    height: 40,
                    child: TextField(
                      onChanged: (text) {

                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: const InputDecoration(

                        contentPadding: EdgeInsets.all(0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffaeb1b9), width: 1.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xffaeb1b9), width: 1.0),
                        ),
                        hintStyle: hintStyle,
                      ),
                    )
                )
            ),


          ]

      ),
    );
  }
}