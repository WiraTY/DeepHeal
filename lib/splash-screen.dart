import 'dart:async';
import 'package:flutter/material.dart';
import 'login_page.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);
  static String tag = 'splash-screen';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 122, 215, 255),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: <Color>[
                  Color.fromARGB(255, 122, 215, 255),
                  Color.fromARGB(255, 16, 162, 224)
                ])),
          ),
          Center(
            child: Image.asset(
              "assets/images/1.png",
              width: 210,
              height: 210,
            ),
          ),
          Align(
            alignment: Alignment(0, 0.3),
            child: Container(
              child: Text("DeepHeal",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  )),
            ),
          ),
          Align(
            alignment: Alignment(0, 0.9),
            child: Container(
              child: Text("version 1.0",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "Inter",
                    fontSize: 12,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
