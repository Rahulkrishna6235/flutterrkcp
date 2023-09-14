import 'package:flutter/material.dart';
import 'package:flutterrkcp/storage/firebaseex/firebasehelper.dart';
import 'package:flutterrkcp/storage/firebaseex/firelogin.dart';

class Homefire extends StatelessWidget {
  const Homefire({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
          FireHelper().signout().then((value){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Loginfire()));
          });
        }, child: Text("signout")),
      ),
    );
  }
}
