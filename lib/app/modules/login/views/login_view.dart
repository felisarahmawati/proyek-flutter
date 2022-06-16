import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:laravel/app/modules/home/views/home_view.dart';
import 'package:laravel/app/routes/app_pages.dart';
import 'package:laravel/app/modules/services/auth_services.dart';
import 'package:laravel/app/modules/services/globals.dart';

// import 'package:shared_preferences/shared_preferences';
import '../controllers/login_controller.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);
  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // BuildContext get context
  void loginPressed() async {
    var response = await http.post(
        Uri.parse("http://192.168.47.30:8000/api/auth/login"),
        body: ({
          "email": _emailController.text,
          "password": _passwordController.text
        }));
    final body = json.decode(response.body);
    if (_emailController.text != body["email"]) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Email Tidak Sesuai"),
      ));
    } else if (_passwordController.text != body["password"]) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Password Tidak Sesuai"),
      ));
    } else {
      if (response.statusCode == 200) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const HomeView(),
            ));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Login Gagal"),
        ));
      }
    }
    WidgetsFlutterBinding.ensureInitialized();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var password = prefs.getString('password');
    print(password);
    runApp(MaterialApp(home: password == null ? HomeView() : LoginView()));
  }

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
              child: Image.asset(
                "assets/images/123.png",
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Masukkan Login",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Email",
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Masukkan Password",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Password",
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: loginPressed,
              child: Text(
                "Login",
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
