import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:laravel/app/modules/home/views/home_view.dart';
import 'package:laravel/app/modules/jadwal/views/detailpan.dart';

import '../../panduan/views/detail_panduan.dart';
import '../controllers/jadwal_controller.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Panduan extends StatelessWidget {
  const Panduan({
    Key? key,
  }) : super(key: key);

  final String url = 'http://192.168.47.30:8000/api/auth/panduan';

  Future getMateri() async {
    var response = await http.get(Uri.parse(url));
    print(json.decode(response.body));
    return json.decode(response.body);
  }

  @override
  Widget build(BuildContext context) {
    getMateri();
    return Scaffold(
      backgroundColor: Color(0xFF098DB3),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF098DB3),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomeView()));
            },
            icon: Icon(Icons.arrow_back)),
        title: Text('Posyandu'),
      ),
      body: FutureBuilder(
        future: getMateri(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: (snapshot.data as dynamic)['data'].length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      // Container(
                      //   child: Center(
                      //     child: Image.asset("assets/images/hamil.png"),
                      //   ),
                      // ),
                      SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(30),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Panduan",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  SizedBox(height: 7),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                DetailPan(
                                              pan: (snapshot.data
                                                  as dynamic)["data"][index],
                                            ),
                                          ));
                                    },
                                    child: new Detailpand(
                                      number: "",
                                      title: (snapshot.data as dynamic)['data']
                                          [index]['judul'],
                                      Slug: "Welcome to Panduan Posyandu",
                                      isDone: true,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                });
          } else {
            return Text('');
          }
        },
      ),
    );
  }
}

class Detailpand extends StatelessWidget {
  final String number;
  final String title;
  final String Slug;
  final bool isDone;
  const Detailpand({
    Key? key,
    required this.number,
    required this.title,
    required this.Slug,
    this.isDone = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Row(
        children: <Widget>[
          Text(
            number,
            style: TextStyle(
              fontSize: 35,
              color: Colors.black.withOpacity(.15),
            ),
          ),
          SizedBox(width: 20),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title\n",
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 17,
                  ),
                ),
                // TextSpan(
                //   (snapshot.data as dynamic)['data'][index]['judul'],
                //   style: TextStyle(
                //     color: Colors.black.withOpacity(.5),
                //     fontSize: 17,
                //   ),
                // ),
                TextSpan(
                  text: Slug,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFF098DB3).withOpacity(isDone ? 1 : .5),
            ),
            child: Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
