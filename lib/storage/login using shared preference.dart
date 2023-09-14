import 'package:flutter/material.dart';
import 'package:flutterrkcp/storage/sharedhome.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main() {
  runApp(MaterialApp(
    home: loginpage(),
  ));}
  class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
  }

  class _loginpageState extends State<loginpage> {
  final uname_controller= TextEditingController();
  final pass_controller= TextEditingController();
  late SharedPreferences preferences;
  late bool newuser;
  @override
  void iniState(){
   check_user_already_login();
   super.initState();
  }

  void check_user_already_login() async{
    preferences= await SharedPreferences.getInstance()!;
    newuser=preferences.getBool('newuser')?? true;
    if(newuser==false){
      Navigator.of(context).push(MaterialPageRoute(builder:(context) =>homepage()));
    }
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(title: Text("shared preference"),),
  body: Center(
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  const Padding(
  padding: EdgeInsets.all(20.0),
  child: TextField(
  decoration: InputDecoration(
  hintText: "UserName", border: OutlineInputBorder()),
  ),
  ),
  const Padding(
  padding: EdgeInsets.all(20.0),
  child: TextField(
  decoration: InputDecoration(
  hintText: "PassWord", border: OutlineInputBorder()),
  ),
  ),
  ElevatedButton(onPressed: () async {
    preferences =await SharedPreferences.getInstance()!;
    String username= uname_controller.text;
    String password= pass_controller.text;

    if(username != "" && password !=""){
      preferences.setString("uname", username);
      preferences.setBool("nweuser", false);
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => homepage()));
    }
  }, child: const Text("Login")),

  ],
  ),
  ),
  );
  }


  }


