import 'package:flutter/material.dart';

class PanduanDetail extends StatelessWidget {
  const PanduanDetail({Key? key}) : super(key: key);
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
            SizedBox(height: 300),
            Expanded(
                child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Panduan Posyandu",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
