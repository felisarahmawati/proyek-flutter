import 'package:flutter/material.dart';
import 'package:laravel/app/modules/bayibalita/views/bayibalita_view.dart';

class BalitaDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF098DB3),
          image: DecorationImage(
            image: AssetImage("assets/images/234.png"),
            alignment: Alignment.topRight,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 200),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
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
                            "Balita",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        SizedBox(child: const BayiBalitaView()),
                                  ));
                            },
                            child: new DetailBalita(
                              number: "01",
                              title: "Merawat Balita",
                              Slug: "Welcome to Posyandu",
                              isDone: true,
                            ),
                          ),
                          DetailBalita(
                            number: "02",
                            title: "Memandikan Balita",
                            Slug: "Welcome to Posyandu",
                            isDone: true,
                          ),
                          DetailBalita(
                            number: "03",
                            title: "Mengenal Tangisan Balita",
                            Slug: "Welcome to Posyandu",
                            isDone: true,
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
    );
  }
}

class DetailBalita extends StatelessWidget {
  final String number;
  final String title;
  final String Slug;
  final bool isDone;
  const DetailBalita({
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
