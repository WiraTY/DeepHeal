import 'package:flutter/material.dart';
import 'home_page.dart';
import 'regist_page.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'wty@gmail.com',
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
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(7.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0),
      child: Container(
        margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Material(
          borderRadius: BorderRadius.circular(30.0),
          shadowColor: Colors.lightBlueAccent.shade100,
          child: MaterialButton(
            minWidth: 150.0,
            height: 42.0,
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
            color: Color.fromARGB(255, 255, 167, 66),
            child: Text('Masuk', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );

    final regButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 0.0),
      child: Container(
        margin: EdgeInsets.fromLTRB(0, 0, 30, 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2.0),
            border: Border.all(color: Colors.lightBlue)),
        child: Material(
          borderRadius: BorderRadius.circular(30.0),
          shadowColor: Colors.amber,
          child: MaterialButton(
            minWidth: 150.0,
            height: 48.0,
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => RegistPage()));
            },
            color: Color.fromARGB(255, 230, 230, 230),
            child: Text('Daftar', style: TextStyle(color: Colors.black)),
          ),
        ),
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
            child: ListView(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 40),
                    child: Text("DeepHeal",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        )),
                  ),
                ),
                Center(
                  child: Container(
                    child: SizedBox(
                      width: 250,
                      height: 250,
                      child: LottieBuilder.network(
                          'https://assets4.lottiefiles.com/private_files/lf30_of3skn6w.json'),
                    ),
                  ),
                )
              ],
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
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: TextField(
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                prefixIcon: Icon(
                                  Icons.mail_outline,
                                  color: Colors.lightBlue,
                                ),
                                labelText: "Email",
                                hintText: "wty@email.com",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: TextField(
                            obscureText: _obscureText,
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                prefixIcon: Icon(
                                  Icons.lock_outline,
                                  color: Colors.lightBlue,
                                ),
                                labelText: "Password",
                                hintText: "Password",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [loginButton, regButton],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    width: 10,
                    height: 60,
                    child: Text("Dengan Masuk atau Daftar, anda telah menyetujui Ketentuan Layanan serta Kebijakan Privasi GoBuild", textAlign: TextAlign.center, style: TextStyle(fontSize: 13),),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
