import 'package:flutter/material.dart';
import 'package:flutterrkcp/storage/registration%20shared%20preference.dart';
import 'package:flutterrkcp/storage/sharedhome.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: login2(),
  ));}
class login2 extends StatefulWidget {
  const login2({super.key});

  @override
  State<login2> createState() => _login2State();
}

class _login2State extends State<login2> {
  final uname=TextEditingController();
  final pass=TextEditingController();
  final phone=TextEditingController();
  late SharedPreferences preferences;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login2"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: uname,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "username"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: pass,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "password"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),hintText: "phone num"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(

              ),
            ),
            ElevatedButton(onPressed: ()=> validateandlogin(), child: Text("login")),
            ElevatedButton(onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => registrationsharedpage()));
            },
                child: Text("go to registrationpage"))
          ],
        ),
      ),
    );
  }
    void validateandlogin() async{
      preferences =await SharedPreferences.getInstance()!;
      String storedusername =preferences.getString('uname')!;
      String storedpassword =preferences.getString('pass')!;
      String username = uname.text;
      String pwd=pass.text;

      if(storedusername == username && storedpassword == pwd){
       Navigator.of(context).push(MaterialPageRoute(builder: (context)=> homepage()));
    }
  }
}
