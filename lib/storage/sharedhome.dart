import 'package:flutter/material.dart';
import 'package:flutterrkcp/storage/login%20using%20shared%20preference.dart';
import 'package:flutterrkcp/storage/loginpage2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  late SharedPreferences preferences;
  late String username;
  @override
  void iniState(){
    fetchdata();
    super.initState();
  }
  void fetchdata()async{
    preferences= await SharedPreferences.getInstance();
    setState(() {
      username=preferences.getString("uname")!;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SHARED HOME"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("WELCOME $username",
            style: TextStyle(fontSize: 30),
            ),
ElevatedButton(onPressed: ()async{
  await preferences.setBool('newuser', true);
  Navigator.of(context).push(MaterialPageRoute(builder:(context) =>loginpage()));
},
  child: Text("log out")
),
          ],
        ),
      ),
    );
  }

 // void fetchdata() {}
}
