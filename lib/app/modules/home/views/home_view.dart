import 'package:flutter/material.dart';
import 'package:laravel/app/modules/bayibalita/views/bayibalita_view.dart';
import 'package:laravel/app/modules/jadwal/views/jadwal_view.dart';
import 'package:laravel/app/modules/profil/views/profil_view.dart';
import 'package:get/get.dart';
import 'package:laravel/app/modules/panduan/views/panduan_view.dart';
import 'package:laravel/app/routes/app_pages.dart';
import 'package:laravel/app/modules/ibuhamil/views/ibuhamil_view.dart';
import '../controllers/home_controller.dart';
import 'navbar.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navbar(),
      appBar: AppBar(
        centerTitle: false,
        title: RichText(
          text: TextSpan(
            text: "MY ",
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
            children: [
              TextSpan(
                text: "POSYANDU",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        // actions: [
        //   Container(
        //     margin: EdgeInsets.only(right: 20),
        //     width: 30,
        //     height: 30,
        //     child: Icon(Icons.menu),
        //   ),
        // ],
        backgroundColor: Color(0xFF098DB3),
        elevation: 0,
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 175,
              width: Get.width,
              color: Color(0xFF098DB3),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/images/gambar.png"),
                        // Text(
                        //   "GAMBAR",
                        //   style: TextStyle(
                        //     color: Colors.white,
                        //     fontSize: 18,
                        //     fontWeight: FontWeight.bold,
                        //   ),
                        // ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Menu Utama",
                        style: TextStyle(
                          color: Color(0xFF098DB3),
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
                Container(),
                Expanded(
                  child: Container(
                    // color: Colors.purple,
                    child: Column(
                      children: [
                        //body
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            children: [
                              SizedBox(height: 25),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                SizedBox(
                                                    child: const Panduan()),
                                          ));
                                    },
                                    child: ItemKategori(
                                      title: "Ibu Hamil",
                                      icon: "assets/images/ibuhamil.png",
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                SizedBox(
                                                    child:
                                                        const BayiBalitaView()),
                                          ));
                                    },
                                    child: ItemKategori(
                                      title: "Bayi & Balita",
                                      icon: "assets/images/bayi.png",
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 45),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ItemKategori(
                                    title: "Jadwal",
                                    icon: "assets/images/jadwal_baru.png",
                                  ),
                                  ItemKategori(
                                    title: "Imunisasi",
                                    icon: "assets/images/suntik_baru.png",
                                  ),
                                ],
                              ),
                              SizedBox(height: 45),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  ItemKategori(
                                    title: "Timbangan",
                                    icon: "assets/images/timbangan.png",
                                  ),
                                  ItemKategori(
                                    title: "Rujukan",
                                    icon: "assets/images/rujukan.png",
                                  ),
                                ],
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
          )
        ],
      ),
    );
  }
}

class ItemKategori extends StatelessWidget {
  ItemKategori({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 50,
          height: 50,
          child: Image.asset(
            icon,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: 20),
        Text(
          title,
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}

class ItemNav extends StatelessWidget {
  ItemNav({
    Key? key,
    required this.status,
    required this.icon,
    required this.title,
  }) : super(key: key);

  final bool status;
  final String title;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 20,
          child: Image.asset(
            (status == true)
                ? "assets/icons/$icon-active.png"
                : "assets/icons/$icon.png",
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "Beranda",
          style: TextStyle(
            color: (status == true)
                ? Color(0xFF602924)
                : Color.fromARGB(255, 67, 122, 218),
          ),
        ),
      ],
    );
  }
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 50, size.height);
    path.lineTo(size.width, size.height - 50);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 0);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 0,
    );

    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
