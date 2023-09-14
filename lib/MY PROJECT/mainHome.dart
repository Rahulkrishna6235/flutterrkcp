import 'package:flutter/material.dart';
import 'package:flutterrkcp/MY%20PROJECT/npackage.dart';
void main(){
  runApp(MaterialApp(home: mainHome(),));
}
class mainHome extends StatelessWidget {
  const mainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Npackage(),

    );
  }
}
