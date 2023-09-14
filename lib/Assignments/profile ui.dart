import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Myprofile(),
  ));
}

class Myprofile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Drawer"),
        ),
        drawer: Drawer(
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://unsplash.com/photos/MObehp959c0"),
                    ),
                  ),
                  accountName: Text(
                    "Jerin",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  accountEmail: Text(
                    "Webrror",
                    style: TextStyle(color: Colors.white),
                  ),
                  currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage("https://unsplash.com/photos/5J1bHRX1fNw"))),
              Card(
                child: ListTile(
                  leading: Icon(Icons.dashboard),
                  title: Text("Dashboard"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.security),
                  title: Text("Privacy"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.accessibility),
                  title: Text("Career"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text("Family"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.local_fire_department_rounded),
                  title: Text("Achievements"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text("Payments"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
              Card(
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text("Settings"),
                  trailing: Icon(Icons.arrow_forward_ios_outlined),
                ),
              ),
            ],
          ),
        ));
  }
}