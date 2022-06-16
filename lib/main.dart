import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laravel/app/modules/home/views/home_view.dart';
import 'package:laravel/app/modules/jadwal/views/jadwal_view.dart';
import 'package:laravel/app/modules/login/views/login_view.dart';
import 'app/routes/app_pages.dart';
import 'app/widgets/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 3)),
      builder: (content, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return SplashScreen();
        } else {
          return GetMaterialApp(
            title: "Application",
            // initialRoute: Routes.LOGIN,
            home: LoginView(),
            // home: Panduan(),
            // getPages: AppPages.routes,
            debugShowCheckedModeBanner: false,
          );
        }
      },
    );
  }
}
