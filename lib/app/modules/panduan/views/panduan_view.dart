import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:laravel/app/modules/home/views/home_view.dart';
import 'package:laravel/app/modules/panduan/views/balita.dart';
import 'package:laravel/app/modules/panduan/views/bayi.dart';
import 'package:laravel/app/modules/panduan/views/ibu_hamil.dart';

import '../controllers/panduan_controller.dart';

// class PanduanView extends GetView<PanduanController> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('PanduanView'),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: Text(
//           'PanduanView is working',
//           style: TextStyle(fontSize: 20),
//         ),
//       ),
//     );
//   }
// }
class PanduanView extends GetView<PanduanController> {
  const PanduanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF098DB3),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF098DB3),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            child: Image.asset(
              "assets/images/234.png",
              height: 80,
            ),
          ),
          SizedBox(height: 60),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Panduan Posyandu",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Container(
                  width: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),

          // BUTTON //
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => IbuHamil(),
                      ),
                    );
                  },
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Column(children: [
                          Text(
                            "Ibu Hamil",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF098DB3),
                            ),
                          ),
                        ]),
                        width: 120,
                        height: 120,
                        // color: Colors.amber,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12)),
                      Container(
                        child: Image.asset("assets/images/ibu.png"),
                        width: 100,
                        height: 100,
                        // color: Colors.red,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 245, 245, 245),
                    fixedSize: Size(330, 130),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => Balita(),
                      ),
                    );
                  },
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Column(children: [
                          Text(
                            "Balita",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF098DB3),
                            ),
                          ),
                        ]),
                        width: 120,
                        height: 120,
                        // color: Colors.amber,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12)),
                      Container(
                        child: Image.asset("assets/images/balita.png"),
                        width: 100,
                        height: 100,
                        // color: Colors.red,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 245, 245, 245),
                    fixedSize: Size(330, 130),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => Bayi(),
                      ),
                    );
                  },
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Column(children: [
                          Text(
                            "Bayi",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF098DB3),
                            ),
                          ),
                        ]),
                        width: 120,
                        height: 120,
                        // color: Colors.amber,
                      ),
                      Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12)),
                      Container(
                        child: Image.asset("assets/images/bayi.png"),
                        width: 100,
                        height: 100,
                        // color: Colors.red,
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 245, 245, 245),
                    fixedSize: Size(330, 130),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 20),
        ],
      ),
    );
  }
}
