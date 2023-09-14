//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutterrkcp/storage/login%20using%20shared%20preference.dart';
import 'package:flutterrkcp/storage/loginpage2.dart';
import 'package:flutterrkcp/storage/sharedhome.dart';
import 'package:shared_preferences/shared_preferences.dart';


class registrationsharedpage extends StatefulWidget {
  const registrationsharedpage({super.key});

  @override
  State<registrationsharedpage> createState() => _registrationsharedpageState();
}

class _registrationsharedpageState extends State<registrationsharedpage> {

  final name =TextEditingController();
  final uname =TextEditingController();
  final pwd =TextEditingController();
  late SharedPreferences preferences;

  //late String showpwd;
 // late String confirmpass;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registration page"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: name,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Name"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: uname,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "UserName"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: pwd,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Password"),
              ),
            ),
            ElevatedButton(onPressed: () =>storedata(),

                child: const Text("Registration here")),

          ],
        ),
      ),
    );
  }

 void storedata()async {
    String personname= name.text;
    String username= uname.text;
    String password= pwd.text;
    preferences= await SharedPreferences.getInstance()!;
    preferences.setString("name", personname);
    preferences.setString("uname", username);
    preferences.setString("pwd", password);
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>login2()));
 }
}






