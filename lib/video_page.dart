import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tes/home_page.dart';
import 'package:tes/vplayer_page.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({Key? key}) : super(key: key);
  static String tag = 'video-page';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            shadowColor: Colors.transparent,
            centerTitle: true,
            leading: Container(
              margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Icon(
                  Icons.arrow_circle_left,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
            title: Container(
              margin: EdgeInsets.fromLTRB(10, 15, 2, 2),
              width: 300,
              height: 40,
              child: Container(
                margin: EdgeInsets.all(2),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black45,
                      ),
                      labelText: "Cari topik, video, dan lainnya",
                      hintText: "",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
          body: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/bgml.png"),
                        fit: BoxFit.cover)),
              ),
              Container(
                margin: EdgeInsets.only(top: 230),
                color: Color.fromARGB(255, 244, 244, 244),
              ),
              Container(
                child: Container(
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
                                  height: 128,
                                  child: Stack(
                                    children: <Widget>[
                                      Center(
                                        child: Container(
                                            margin: EdgeInsets.fromLTRB(
                                                15, 0, 90, 2),
                                            width: 350,
                                            height: 120,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    "Self-Awareness dan Self-Control",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                                Text(
                                                  "Referensi cara mengenali dan mengontrol diri, agar hidup kamu lebih bijaksana dan bahagia.",
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ],
                                            )),
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                240, 28, 2, 0),
                                            width: 150,
                                            height: 100,
                                            child: LottieBuilder.network(
                                                'https://assets6.lottiefiles.com/private_files/lf30_bu8dvacv.json'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  // Navigator.pushReplacement(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             SubarticelPage()));
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: <Widget>[
                              InkWell(
                                child: Container(
                                  margin: EdgeInsets.fromLTRB(20, 30, 20, 20),
                                  width: 350,
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
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
                                              EdgeInsets.fromLTRB(5, 2, 290, 2),
                                          width: 30,
                                          height: 30,
                                          child: Icon(
                                            Icons.file_download_outlined,
                                            color: Colors.lightBlue,
                                            size: 30,
                                          ),
                                          // ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                45, 30, 2, 1),
                                            width: 200,
                                            height: 20,
                                            child: Text(
                                              "Download Materi ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                55, 0, 2, 5),
                                            width: 210,
                                            height: 20,
                                            child: Text(
                                              "Bisa buka kapan saja tanpa internet",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Center(
                                        child: Container(
                                          margin:
                                              EdgeInsets.fromLTRB(220, 2, 5, 2),
                                          width: 25,
                                          height: 25,
                                          child: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: Colors.black,
                                          ),
                                          // ),
                                        ),
                                      ),
                                      Center(
                                        child: Container(
                                          margin:
                                              EdgeInsets.fromLTRB(280, 2, 5, 2),
                                          width: 25,
                                          height: 25,
                                          child: Icon(
                                            Icons.sim_card_download_outlined,
                                            color: Colors.black,
                                            size: 28,
                                          ),
                                          // ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: <Widget>[
                              InkWell(
                                child: Container(
                                  margin: EdgeInsets.only(top: 0),
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  height: 140,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
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
                                          margin: EdgeInsets.fromLTRB(
                                              10, 2, 200, 2),
                                          width: 150,
                                          height: 100,
                                          child: Image.asset(
                                            "assets/images/aa.jpeg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                165, 20, 2, 5),
                                            width: 200,
                                            height: 60,
                                            child: Text(
                                                "Bagaimana Cara Untuk Tidak CemasTerhadap Masa Depan? (Atasi ..."),
                                          ),
                                          Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  165, 0, 2, 0),
                                              width: 200,
                                              height: 20,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("BY KELOMPOK 1",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.amber)),
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
                                              VideoPlayerScreen()));
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: <Widget>[
                              InkWell(
                                child: Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  height: 140,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
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
                                          margin: EdgeInsets.fromLTRB(
                                              10, 2, 200, 2),
                                          width: 150,
                                          height: 100,
                                          child: Image.asset(
                                            "assets/images/v1.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                165, 20, 2, 5),
                                            width: 200,
                                            height: 60,
                                            child: Text(
                                                "Cara Efektif Menjaga Kesehatan Mental (Gangguan Pencernaan..."),
                                          ),
                                          Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  165, 0, 2, 0),
                                              width: 200,
                                              height: 20,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("BY KELOMPOK 1",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.amber)),
                                                ],
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  // Navigator.pushReplacement(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             SubarticelPage()));
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: <Widget>[
                              InkWell(
                                child: Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  height: 140,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
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
                                          margin: EdgeInsets.fromLTRB(
                                              10, 2, 200, 2),
                                          width: 150,
                                          height: 100,
                                          child: Image.asset(
                                            "assets/images/v2.jpg",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(
                                                165, 20, 2, 5),
                                            width: 200,
                                            height: 60,
                                            child: Text(
                                                "Kenapa Menjadi Dewasa itu Menakutkan? (Cara Menjadi..."),
                                          ),
                                          Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  165, 0, 2, 0),
                                              width: 200,
                                              height: 20,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("BY KELOMPOK 1",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.amber)),
                                                ],
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  // Navigator.pushReplacement(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             SubarticelPage()));
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Stack(
                            children: <Widget>[
                              InkWell(
                                child: Container(
                                  margin: EdgeInsets.only(top: 10, bottom: 10),
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  height: 140,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(20),
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
                                          margin: EdgeInsets.fromLTRB(
                                              10, 2, 200, 2),
                                          width: 150,
                                          height: 100,
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
                                                165, 20, 2, 5),
                                            width: 200,
                                            height: 60,
                                            child: Text(
                                                "Buat Kamu yang Bingung sama Kemauan Kamu Sendiri (Langkah..."),
                                          ),
                                          Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  165, 0, 2, 0),
                                              width: 200,
                                              height: 20,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text("BY KELOMPOK 1",
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color: Colors.amber)),
                                                ],
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                onTap: () {
                                  // Navigator.pushReplacement(
                                  //     context,
                                  //     MaterialPageRoute(
                                  //         builder: (context) =>
                                  //             SubarticelPage()));
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
