import 'package:flutter/material.dart';
import 'package:laravel/app/modules/login/views/login_view.dart';
import 'package:laravel/app/modules/profil/views/profil_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              "Felisa Rahmawati",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            accountEmail: Text(
              "felisa@gmail.com",
              style: TextStyle(
                fontSize: 13,
              ),
            ),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/bayi.png",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/background.jpeg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.people),
            title: Text("Profil"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilView()));
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notifikasi"),
            onTap: () => null,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Pengaturan"),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Logout"),
            // onTap: () => null,
            onTap: () async {
              SharedPreferences prefs = await SharedPreferences.getInstance();
              prefs.remove("password");
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const LoginView(),
                  ));
            },
          )
        ],
      ),
    );
  }
}
