import 'package:flutter/material.dart';
import 'login_page.dart';
import 'verif_page.dart';
import 'package:lottie/lottie.dart';

class RegistPage extends StatefulWidget {
  static String tag = 'regist-page';
  @override
  _RegistPageState createState() => new _RegistPageState();
}

class _RegistPageState extends State<RegistPage> {
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
        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Material(
          borderRadius: BorderRadius.circular(30.0),
          shadowColor: Colors.lightBlueAccent.shade100,
          child: MaterialButton(
            minWidth: 350.0,
            height: 42.0,
            onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => VerifPage()));
            },
            color: Color.fromARGB(255, 255, 167, 66),
            child: Text('Daftar Sekarang',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.white)),
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
                    child: SizedBox(
                      width: 250,
                      height: 250,
                      child: LottieBuilder.network(
                          'https://assets10.lottiefiles.com/packages/lf20_wd1udlcz.json'),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 260, 0, 0),
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
                      Text("Pendaftaran",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Silahkan isi data berikut untuk melanjutkan",
                          style: TextStyle(
                            fontFamily: "Inter",
                            fontSize: 14,
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
                                  Icons.account_circle_outlined,
                                  color: Colors.lightBlue,
                                ),
                                labelText: "Nama Lengkap",
                                hintText: "Nama Lengkap",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
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
                            decoration: InputDecoration(
                                fillColor: Colors.white,
                                filled: true,
                                prefixIcon: Icon(
                                  Icons.date_range_rounded,
                                  color: Colors.lightBlue,
                                ),
                                labelText: "Tanggal Lahir",
                                hintText: "1-1-2000",
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
                                labelText: "Buat Password",
                                hintText: "Password",
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
                                labelText: "Konfirmasi Password",
                                hintText: "Password",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: loginButton,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Sudah memiliki akun?"),
                      MaterialButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: Text(" Masuk disini",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ],
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
