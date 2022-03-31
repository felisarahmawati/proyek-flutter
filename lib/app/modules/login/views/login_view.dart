import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:laravel/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(
          children: [
            SizedBox(height: 100),
            Container(
              height: 250,
              child: Image.network(
                "assets/images/log.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Masukan Username",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Username",
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Masukan Password",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: Text(
                "Sign Up",
                style: TextStyle(
                  color: Color(0xFFf0eee4),
                ),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(202, 13, 142, 228),
                  fixedSize: Size(50, 50)),
            ),
          ],
        ),
      ),
    );
  }
}
