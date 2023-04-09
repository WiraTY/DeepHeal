import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tes/home_page.dart';
import 'package:tes/vplayer_page.dart';

class PodcastPage extends StatelessWidget {
  const PodcastPage({Key? key}) : super(key: key);
  static String tag = 'podcast-page';
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
                height: 300,
                width: MediaQuery.of(context).size.width,
                color: Color.fromARGB(255, 244, 244, 244),
                child: LottieBuilder.network(
                  'https://assets4.lottiefiles.com/private_files/lf30_hp2n68rf.json',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 230),
                color: Color.fromARGB(255, 244, 244, 244),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(15, 95, 0, 2),
                  width: 280,
                  height: 120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Podcast",
                          style: TextStyle(
                              color: Color.fromARGB(255, 25, 135, 143),
                              fontWeight: FontWeight.bold)),
                      Text(
                        "Tempat Berbagi Cerita Untuk para anak Muda Indonesia",
                        style: TextStyle(
                            fontSize: 11,
                            color: Color.fromARGB(255, 25, 135, 143),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
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
                                                
                                              ],
                                            )),
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
