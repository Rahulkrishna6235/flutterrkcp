import 'package:flutter/material.dart';
import 'package:flutterrkcp/storage/firebaseex/firebasehelper.dart';
import 'package:flutterrkcp/storage/firebaseex/firelogin.dart';

class Fireregistration extends StatefulWidget {
  const Fireregistration({super.key});

  @override
  State<Fireregistration> createState() => _FireregistrationState();
}

class _FireregistrationState extends State<Fireregistration> {
  final remail=TextEditingController();
  final rpass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("fire registration page"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: remail,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Email'),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: rpass,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Password'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: (){
              String username = remail.text.trim();
              String password = rpass.text.trim();
              FireHelper().signup(email:username,pwd:password).then((message) {
                if(message==null){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Loginfire()));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("message")));
                }
              });
            }, child:
            const Text("register Here")),
            const SizedBox(
              height: 10,
            ),

          ],
        ),
      ),
    );
  }
}
