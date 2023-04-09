import 'package:flutter/material.dart';
import 'package:tes/articel_page.dart';
import 'package:tes/podcast_page.dart';
import 'package:tes/video_page.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static String tag = 'home-page';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Beranda',
      style: optionStyle,
    ),
    Text(
      'Index 1: Konsultasi',
      style: optionStyle,
    ),
    Text(
      'Index 2: Profil',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          toolbarHeight: 90,
          leading: Container(
            margin: EdgeInsets.only(left: 5),
            child: Image.asset(
              "assets/images/2.png",
              width: 31,
              height: 31,
            ),
          ),
          leadingWidth: 41,
          title: Text('DeepHeal'),
          actions: <Widget>[
            IconButton(
              icon: new Icon(
                Icons.chat,
                color: Colors.lightBlue,
                size: 29,
              ),
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
          ],
          backgroundColor: Colors.white,
        ),
      ),
      backgroundColor: Color.fromARGB(255, 122, 215, 255),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bgml.png"),
                fit: BoxFit.cover)),
        child: ListView(
          children: [
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  height: 160,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(13))),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 25, 20, 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Halo, Wira",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text("Bagaimana Perasaanmu hari ini?",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Inter",
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 50, 10, 15),
                        child: new Row(
                          //Digunakan agar widget mengisi ruang kosong pada layar
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            //Widget Pertama
                            new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: 50,
                                  height: 60,
                                  child: Image(
                                    image: AssetImage("assets/images/m1.jpg"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                new Text('Marah'),
                              ],
                            ),
                            //Widget Keuda
                            new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: 50,
                                  height: 60,
                                  child: Image(
                                    image: AssetImage("assets/images/m2.jpg"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                new Text('Buruk'),
                              ],
                            ),
                            //Widget Ketiga
                            new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: 50,
                                  height: 60,
                                  child: Image(
                                    image: AssetImage("assets/images/m3.jpg"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                new Text('Biasa'),
                              ],
                            ),
                            new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: 50,
                                  height: 60,
                                  child: Image(
                                    image: AssetImage("assets/images/m4.jpg"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                new Text('Baik'),
                              ],
                            ),
                            new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  width: 50,
                                  height: 60,
                                  child: Image(
                                    image: AssetImage("assets/images/m5.jpg"),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                new Text('Senang'),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 20),
                  // width: MediaQuery.of(context).size.width * 0.9,
                  height: 70,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: <Color>[
                            Color.fromARGB(255, 122, 215, 255),
                            Color.fromARGB(255, 16, 162, 224)
                          ]),
                      borderRadius: BorderRadius.circular(13)),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(30, 15, 70, 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                                "Konsultasi masalahmu dengan Psikolog dan konselor terbaik",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Inter",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(280, 20, 5, 20),
                  width: 60,
                  height: 30,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: <Color>[
                            Color.fromARGB(255, 245, 165, 37),
                            Color.fromARGB(255, 245, 125, 72)
                          ]),
                      borderRadius: BorderRadius.circular(13)),
                  child: Center(
                      child: Text(
                    "Buka",
                    style: TextStyle(
                        fontFamily: "Inter",
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  )),
                )
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  // width: MediaQuery.of(context).size.width * 0.9,
                  height: 230,
                  decoration: BoxDecoration(color: Colors.white),
                  alignment: Alignment.center,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Deep Heal Video",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              child: Row(
                                children: [
                                  Text(
                                      "Tayangan terbaik untuk menemani keseharianmu",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.normal,
                                        fontSize: 11,
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(270, 25, 2, 25),
                        width: 120,
                        height: 20,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VideoPage()));
                          },
                          child: Center(
                            child: Text(
                              "Lihat Semua",
                              style: TextStyle(color: Colors.lightBlue),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 55, 0, 0),
                        child: Center(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                child: new Row(
                                  //Digunakan agar widget mengisi ruang kosong pada layar
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    //Widget Pertama
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(13)),
                                      ),
                                      width: 170,
                                      height: 150,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 12),
                                      child: new Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            width: 170,
                                            height: 120,
                                            child: LottieBuilder.network(
                                                'https://assets1.lottiefiles.com/private_files/lf30_rl78lb7d.json'),
                                          ),
                                          Text("Deadline")
                                        ],
                                      ),
                                    ),
                                    //Widget Keuda
                                    Container(
                                      width: 170,
                                      height: 150,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 12),
                                      child: new Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            width: 170,
                                            height: 120,
                                            child: LottieBuilder.network(
                                                'https://assets1.lottiefiles.com/private_files/lf30_OerOdz.json'),
                                          ),
                                          Text("Perjalanan")
                                        ],
                                      ),
                                    ),
                                    //Widget Ketiga
                                    Container(
                                      width: 170,
                                      height: 150,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 12),
                                      child: new Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            width: 170,
                                            height: 120,
                                            child: LottieBuilder.network(
                                                'https://assets1.lottiefiles.com/private_files/lf30_xo1xreyq.json'),
                                          ),
                                          Text("Meraih Mimpi")
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  // width: MediaQuery.of(context).size.width * 0.9,
                  height: 230,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Deep Heal Podcast",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              child: Row(
                                children: [
                                  Text(
                                      "Podcast terbaik untuk menemani keseharianmu",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.normal,
                                        fontSize: 11,
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(270, 25, 2, 25),
                        width: 120,
                        height: 20,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PodcastPage()));
                          },
                          child: Center(
                            child: Text(
                              "Lihat Semua",
                              style: TextStyle(color: Colors.lightBlue),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 55, 0, 0),
                        child: Center(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                child: new Row(
                                  //Digunakan agar widget mengisi ruang kosong pada layar
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    //Widget Pertama
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(13)),
                                      ),
                                      width: 170,
                                      height: 150,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 12),
                                      child: new Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            width: 170,
                                            height: 120,
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/images/p1.jpg"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Text("Self Awarness")
                                        ],
                                      ),
                                    ),
                                    //Widget Keuda
                                    Container(
                                      width: 170,
                                      height: 150,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 12),
                                      child: new Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            width: 170,
                                            height: 120,
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/images/p2.jpg"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Text("Kegagalan")
                                        ],
                                      ),
                                    ),
                                    //Widget Ketiga
                                    Container(
                                      width: 170,
                                      height: 150,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 12),
                                      child: new Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            width: 170,
                                            height: 120,
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/images/p3.jpg"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Text("Kesepian")
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  // width: MediaQuery.of(context).size.width * 0.9,
                  height: 230,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(15, 15, 15, 15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Deep Heal Artikel",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Inter",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              child: Row(
                                children: [
                                  Text(
                                      "Artikel andalanmu seputar kesehatan mental",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Inter",
                                        fontWeight: FontWeight.normal,
                                        fontSize: 11,
                                      ))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(270, 25, 2, 25),
                        width: 120,
                        height: 20,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ArticelPage()));
                          },
                          child: Center(
                            child: Text(
                              "Lihat Semua",
                              style: TextStyle(color: Colors.lightBlue),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 55, 0, 0),
                        child: Center(
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                child: new Row(
                                  //Digunakan agar widget mengisi ruang kosong pada layar
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    //Widget Pertama
                                    Container(
                                      width: 170,
                                      height: 150,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 12),
                                      child: new Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            width: 170,
                                            height: 100,
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/images/a1.jpg"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Text("Tips membangun kebiasaan baru")
                                        ],
                                      ),
                                    ),
                                    //Widget Keuda
                                    Container(
                                      width: 170,
                                      height: 150,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 12),
                                      child: new Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            width: 170,
                                            height: 100,
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/images/a2.jpg"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Text(
                                              "7 Tanda Kesehatan Mentalmu Sehat")
                                        ],
                                      ),
                                    ),
                                    //Widget Ketiga
                                    Container(
                                      width: 170,
                                      height: 150,
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 12),
                                      child: new Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            width: 170,
                                            height: 100,
                                            child: Image(
                                              image: AssetImage(
                                                  "assets/images/a3.jpg"),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          Text(
                                              "Kenali Perilaku Self Serving Bias")
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_rounded),
            label: 'Konsultasi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded),
            label: 'Profil',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlue,
        onTap: _onItemTapped,
      ),
    );
  }
}
