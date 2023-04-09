import 'package:flutter/material.dart';
import 'package:tes/home_page.dart';
import 'package:tes/subarticel_page.dart';

class ArticelPage extends StatelessWidget {
  const ArticelPage({Key? key}) : super(key: key);
  static String tag = 'articel-page';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            leading: Container(
                child: MaterialButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
              child: Icon(
                Icons.arrow_back_outlined,
                color: Colors.lightBlue,
              ),
            )),
            title: Text(
              'Artikel',
              style: TextStyle(fontSize: 16.0),
            ),
            bottom: PreferredSize(
                child: TabBar(
                    isScrollable: true,
                    unselectedLabelColor: Colors.black,
                    indicatorColor: Color.fromARGB(255, 242, 151, 8),
                    tabs: [
                      Tab(
                        child: Text('Kesehatan Mental'),
                      ),
                      Tab(
                        child: Text('Pendidikan'),
                      ),
                      Tab(
                        child: Text('Produktivitas'),
                      ),
                      Tab(
                        child: Text('Pemahaman'),
                      ),
                    ]),
                preferredSize: Size.fromHeight(30.0)),
            backgroundColor: Colors.white,
          ),
          body: TabBarView(
            children: <Widget>[
              Container(
                color: Colors.white,
                child: ListView(
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: <Widget>[
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: 4),
                                width: MediaQuery.of(context).size.width,
                                height: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Center(
                                      child: Container(
                                        margin:
                                            EdgeInsets.fromLTRB(5, 2, 220, 2),
                                        width: 150,
                                        height: 120,
                                        child: Image.asset(
                                          "assets/images/a1.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              180, 40, 2, 5),
                                          width: 200,
                                          height: 60,
                                          child: Text(
                                              "Tips membangun kebiasaan baru agar semakin produktif"),
                                        ),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(
                                                180, 0, 2, 0),
                                            width: 200,
                                            height: 40,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("BY KELOMPOK 1",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.amber)),
                                                Text("FEBRUARY 22, 2022",
                                                    style:
                                                        TextStyle(fontSize: 10))
                                              ],
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SubarticelPage()));
                              },
                            ),
                          ],
                        ),
                        Stack(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              width: MediaQuery.of(context).size.width,
                              height: 170,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(5, 2, 220, 2),
                                      width: 150,
                                      height: 120,
                                      child: Image.asset(
                                        "assets/images/a2.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(180, 40, 2, 5),
                                        width: 200,
                                        height: 60,
                                        child: Text(
                                            "7 Tanda Kesehatan Mentalmu dalam Keadaan Baik"),
                                      ),
                                      Container(
                                          margin:
                                              EdgeInsets.fromLTRB(180, 0, 2, 0),
                                          width: 200,
                                          height: 40,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("BY KELOMPOK 1",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.amber)),
                                              Text("FEBRUARY 22, 2022",
                                                  style:
                                                      TextStyle(fontSize: 10))
                                            ],
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              width: MediaQuery.of(context).size.width,
                              height: 170,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(5, 2, 220, 2),
                                      width: 150,
                                      height: 120,
                                      child: Image.asset(
                                        "assets/images/a3.jpg",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(180, 40, 2, 5),
                                        width: 200,
                                        height: 60,
                                        child: Text(
                                            "Sering Menyalahkan Orang Lain? Kenali Perilaku Self Serving Bias"),
                                      ),
                                      Container(
                                          margin:
                                              EdgeInsets.fromLTRB(180, 0, 2, 0),
                                          width: 200,
                                          height: 40,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("BY KELOMPOK 1",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.amber)),
                                              Text("FEBRUARY 22, 2022",
                                                  style:
                                                      TextStyle(fontSize: 10))
                                            ],
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              width: MediaQuery.of(context).size.width,
                              height: 170,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(5, 2, 220, 2),
                                      width: 150,
                                      height: 120,
                                      child: Image.asset(
                                        "assets/images/a4.jpg",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(180, 40, 2, 5),
                                        width: 200,
                                        height: 60,
                                        child: Text(
                                            "Kiat-Kiat Ini Agar Kemampuan Decision Making Kamu Meningkat"),
                                      ),
                                      Container(
                                          margin:
                                              EdgeInsets.fromLTRB(180, 0, 2, 0),
                                          width: 200,
                                          height: 40,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("BY KELOMPOK 1",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.amber)),
                                              Text("FEBRUARY 22, 2022",
                                                  style:
                                                      TextStyle(fontSize: 10))
                                            ],
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              width: MediaQuery.of(context).size.width,
                              height: 170,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(5, 2, 220, 2),
                                      width: 150,
                                      height: 120,
                                      child: Image.asset(
                                        "assets/images/a5.jpg",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(180, 40, 2, 5),
                                        width: 200,
                                        height: 60,
                                        child: Text(
                                            "5 Dampak Buruk Menahan Amarah"),
                                      ),
                                      Container(
                                          margin:
                                              EdgeInsets.fromLTRB(180, 0, 2, 0),
                                          width: 200,
                                          height: 40,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("BY KELOMPOK 1",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.amber)),
                                              Text("FEBRUARY 22, 2022",
                                                  style:
                                                      TextStyle(fontSize: 10))
                                            ],
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              width: MediaQuery.of(context).size.width,
                              height: 170,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(5, 2, 220, 2),
                                      width: 150,
                                      height: 120,
                                      child: Image.asset(
                                        "assets/images/a6.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(180, 40, 2, 5),
                                        width: 200,
                                        height: 60,
                                        child: Text(
                                            "Emotional Sponge, Kepribadian yang Mudah Menyerap Stres"),
                                      ),
                                      Container(
                                          margin:
                                              EdgeInsets.fromLTRB(180, 0, 2, 0),
                                          width: 200,
                                          height: 40,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("BY KELOMPOK 1",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.amber)),
                                              Text("FEBRUARY 22, 2022",
                                                  style:
                                                      TextStyle(fontSize: 10))
                                            ],
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                child: ListView(
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: <Widget>[
                            InkWell(
                              child: Container(
                                margin: EdgeInsets.only(top: 4),
                                width: MediaQuery.of(context).size.width,
                                height: 170,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.1),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(
                                          0, 3), // changes position of shadow
                                    ),
                                  ],
                                ),
                                child: Stack(
                                  children: <Widget>[
                                    Center(
                                      child: Container(
                                        margin:
                                            EdgeInsets.fromLTRB(5, 2, 220, 2),
                                        width: 150,
                                        height: 120,
                                        child: Image.asset(
                                          "assets/images/a1.jpg",
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              180, 40, 2, 5),
                                          width: 200,
                                          height: 60,
                                          child: Text(
                                              "Tips membangun kebiasaan baru agar semakin produktif"),
                                        ),
                                        Container(
                                            margin: EdgeInsets.fromLTRB(
                                                180, 0, 2, 0),
                                            width: 200,
                                            height: 40,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text("BY KELOMPOK 1",
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color: Colors.amber)),
                                                Text("FEBRUARY 22, 2022",
                                                    style:
                                                        TextStyle(fontSize: 10))
                                              ],
                                            )),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SubarticelPage()));
                              },
                            ),
                          ],
                        ),
                        Stack(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              width: MediaQuery.of(context).size.width,
                              height: 170,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(5, 2, 220, 2),
                                      width: 150,
                                      height: 120,
                                      child: Image.asset(
                                        "assets/images/a8.jpg",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(180, 40, 2, 5),
                                        width: 200,
                                        height: 60,
                                        child: Text(
                                            "Mengenal Love Bombing, Salah Satu Tanda Cinta yang Manipulatif"),
                                      ),
                                      Container(
                                          margin:
                                              EdgeInsets.fromLTRB(180, 0, 2, 0),
                                          width: 200,
                                          height: 40,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("BY KELOMPOK 1",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.amber)),
                                              Text("FEBRUARY 22, 2022",
                                                  style:
                                                      TextStyle(fontSize: 10))
                                            ],
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              width: MediaQuery.of(context).size.width,
                              height: 170,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(5, 2, 220, 2),
                                      width: 150,
                                      height: 120,
                                      child: Image.asset(
                                        "assets/images/a9.jpg",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(180, 40, 2, 5),
                                        width: 200,
                                        height: 60,
                                        child: Text(
                                            "Filosofi Jam Dinding: Cara Sederhana untuk Hidup Lebih Baik"),
                                      ),
                                      Container(
                                          margin:
                                              EdgeInsets.fromLTRB(180, 0, 2, 0),
                                          width: 200,
                                          height: 40,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("BY KELOMPOK 1",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.amber)),
                                              Text("FEBRUARY 22, 2022",
                                                  style:
                                                      TextStyle(fontSize: 10))
                                            ],
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              width: MediaQuery.of(context).size.width,
                              height: 170,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(5, 2, 220, 2),
                                      width: 150,
                                      height: 120,
                                      child: Image.asset(
                                        "assets/images/a10.jpg",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(180, 40, 2, 5),
                                        width: 200,
                                        height: 60,
                                        child: Text(
                                            "Buat yang Suka Nyalahin Diri Sendiri"),
                                      ),
                                      Container(
                                          margin:
                                              EdgeInsets.fromLTRB(180, 0, 2, 0),
                                          width: 200,
                                          height: 40,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("BY KELOMPOK 1",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.amber)),
                                              Text("FEBRUARY 22, 2022",
                                                  style:
                                                      TextStyle(fontSize: 10))
                                            ],
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              width: MediaQuery.of(context).size.width,
                              height: 170,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(5, 2, 220, 2),
                                      width: 150,
                                      height: 120,
                                      child: Image.asset(
                                        "assets/images/a11.jpg",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(180, 40, 2, 5),
                                        width: 200,
                                        height: 60,
                                        child: Text(
                                            "Bagaimana Mengukur Sukses Agar Hidup Bahagia?"),
                                      ),
                                      Container(
                                          margin:
                                              EdgeInsets.fromLTRB(180, 0, 2, 0),
                                          width: 200,
                                          height: 40,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("BY KELOMPOK 1",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.amber)),
                                              Text("FEBRUARY 22, 2022",
                                                  style:
                                                      TextStyle(fontSize: 10))
                                            ],
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Stack(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 4),
                              width: MediaQuery.of(context).size.width,
                              height: 170,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Center(
                                    child: Container(
                                      margin: EdgeInsets.fromLTRB(5, 2, 220, 2),
                                      width: 150,
                                      height: 120,
                                      child: Image.asset(
                                        "assets/images/a12.jpg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        margin:
                                            EdgeInsets.fromLTRB(180, 40, 2, 5),
                                        width: 200,
                                        height: 60,
                                        child: Text(
                                            "Cara Mengejar Makna dan Tujuan Hidup dengan Law of Attraction"),
                                      ),
                                      Container(
                                          margin:
                                              EdgeInsets.fromLTRB(180, 0, 2, 0),
                                          width: 200,
                                          height: 40,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("BY KELOMPOK 1",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.amber)),
                                              Text("FEBRUARY 22, 2022",
                                                  style:
                                                      TextStyle(fontSize: 10))
                                            ],
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 3'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 4'),
                ),
              ),
            ],
          )),
    );
  }
}