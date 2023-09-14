import 'package:flutter/material.dart';
import 'package:flutterrkcp/fasion%20store/body.dart';
void main(){
  runApp(MaterialApp(home: HOME(),));
}
class HOME extends StatelessWidget {
  const HOME({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
