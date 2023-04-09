import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
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

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'alucard@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(7.0)),
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'some password',
      obscureText: true,
      decoration: 
      
      InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(7.0)),
        
      ),
    );

    return Scaffold(
      // appBar: AppBar(title: Text("GeeksForGeeks")),
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
          Align(
            alignment: Alignment(0, -0.85),
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
            alignment: Alignment(0, -0.7),
            child: SizedBox(
              width: 250,
              height: 250,
              child: LottieBuilder.network(
                  'https://assets4.lottiefiles.com/private_files/lf30_of3skn6w.json'),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 410, 0, 0),
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: Align(
              alignment: Alignment(0, -0.7),
              child: ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text("Selamat Datang di DeepHeal",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Silahkan masuk dengan akun Anda",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 12,
                          ))
                    ],
                  ),
                  SizedBox(height: 20.0),
                  email,
                  SizedBox(height: 10.0),
                  password,
                  SizedBox(height: 24.0),
                  Row()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
