import 'package:flutter/material.dart';
import 'package:tes/articel_page.dart';
import 'package:tes/home_page.dart';

class SubarticelPage extends StatelessWidget {
  const SubarticelPage({Key? key}) : super(key: key);
  static String tag = 'subarticel-page';
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
                    MaterialPageRoute(builder: (context) => ArticelPage()));
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
                child: ListView(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.9,
                      height: MediaQuery.of(context).size.height * 0.9,
                      child: Center(
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  height:
                                      MediaQuery.of(context).size.height * 0.08,
                                  child: Center(
                                      child: Text(
                                          "Tips Membangun Kebiasaan BaruAgar Semakin Produktif",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 16))),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  height:
                                      MediaQuery.of(context).size.height * 0.08,
                                  child: Center(
                                      child: Column(
                                    children: [
                                      Text("Kelompok 1",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Color.fromARGB(
                                                  255, 207, 207, 207))),
                                      Text("22 Februari 2022",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Color.fromARGB(
                                                  255, 207, 207, 207))),
                                    ],
                                  )),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  height:
                                      MediaQuery.of(context).size.height * 0.25,
                                  child: Image(
                                    image: AssetImage("assets/images/a1.jpg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.9,
                                  height:
                                      MediaQuery.of(context).size.height * 0.4,
                                  child: Flexible(
                                    
                                    child: Text(
                                        "Saat tahun baru, biasanya banyak orang membuat resolusi tahun baru. Resolusi tahun baru ini bertujuan untuk membangun kebiasaan baik dan menghilangkan kebiasaan buruk. Contohnya, memulai hidup sehat, menjadi lebih produktif, atau mengurangi main medsos. \n\nMembentuk sebuah resolusi yang bisa menjadi kebiasaanini dapat memberikan banyak keuntungan. Salah satunya,kita jadi bisa melakukan suatu perilaku secara otomatistanpa perlu mengerahkan energi fisik dan mental yangterlalu besar. Hal ini juga memungkinkan kita untukmencapai tujuanmu seperti lebih produktif dan lebih sehat. \n\nMasalahnya, membentuk kebiasaan ini cukup tricky danmembutuhkan konsistensi.  Menurut penelitian yang dilakukan di Edith Cowan University, resolusi tahun baru milik kebanyakan orang cuma bertahan sampai beberapaminggu aja. Penelitian lainnya juga mengatakan kalau cuma 8% orang yang berhasil menjalankan resolusi tahunbarunya. Sayang sekali ya. Supaya kamu bisa membuatkebiasaan baru ini bertahan lama, simak tulisannya sampai selesai, ya!",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black)),
                                            
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                child: Center(
                  child: Text('Tab 2'),
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
