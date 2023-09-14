import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutterrkcp/storage/firebaseex/firebasehelper.dart';
import 'package:flutterrkcp/storage/firebaseex/registration.dart';

import 'Homefire.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(home: Loginfire(),));
}

class Loginfire extends StatefulWidget {
  const Loginfire({super.key});

  @override
  State<Loginfire> createState() => _LoginfireState();
}

class _LoginfireState extends State<Loginfire> {
  final email=TextEditingController();
  final pass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("fire login page"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Email'),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: pass,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              String username = email.text.trim();
              String password = pass.text.trim();
              FireHelper().signin(email:username,pass:password).then((value){
                if(value==null){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Homefire()));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(value)));
                }
              });
            }, child:
            const Text("Login Here")),
        const SizedBox(
          height: 10,
        ),
           ElevatedButton(onPressed: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Fireregistration()));
           }, child: const Text("Register Here")),
          ],
        ),
      ),
    );
  }
}
