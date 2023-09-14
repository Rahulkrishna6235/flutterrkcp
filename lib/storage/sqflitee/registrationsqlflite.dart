import 'package:flutter/material.dart';
import 'package:flutterrkcp/storage/sharedhome.dart';
import 'package:flutterrkcp/storage/sqflitee/reghome.dart';
import 'package:flutterrkcp/storage/sqflitee/registerdb.dart';
import 'package:flutterrkcp/storage/sqflitee/regsignup.dart';
void main() {
  runApp(MaterialApp(
    home: register(),
  ));}
class register extends StatefulWidget {
  const register({super.key});
  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  var uname_controller = TextEditingController();
  var pass_controller = TextEditingController();
  var email_controller =TextEditingController();
  void checklogin(String email,dynamic password)async{
var data = await SQLHelper.checklogin(email,password);
if(data.isNotEmpty){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home(data: data,)));
  print("login failed");
}else if(data.isEmpty) {
Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>signup()));
print("login success");
}
  }
  @override
  Widget build(BuildContext context) {
    var uname;
    var pass;
    var email;
    return Scaffold(
      appBar: AppBar(title: Text("REGISTER"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: uname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),hintText:"username"
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: pass,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),hintText: "email"
              ),
              )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: email,
                decoration: InputDecoration(
                border: OutlineInputBorder(),hintText: "password"
              ),),
            ),
            ElevatedButton(onPressed: ()async{
              if(uname&&pass==null)
                {
                  await presslog();
                }if(uname&&pass!=null){
                await checklog();
              }
            }, child: Text("success")),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
            }, child:Text("Logged") )
          ],
        )
        ),
    );
  }

  presslog() {}

  checklog() {}
}
