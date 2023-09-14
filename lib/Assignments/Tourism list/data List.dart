import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutterrkcp/Assignments/Tourism%20list/details.dart';
import 'package:flutterrkcp/Assignments/Tourism%20list/list%20data.dart';
void main(){
  runApp(MaterialApp(home: productlist(),
  debugShowCheckedModeBanner: false,
  routes: {
    "data":(context)=>productDetails()
  },
  ));
}

class productlist extends StatelessWidget {
  const productlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(15),
        children: product.map((e) => ListTile(
          leading: Image.network(e["image"]),
          title: Text(e["name"]),
          onTap: ()=>gotodetails(context,e["id"]),
        ))
      ),
    );
  }

 void gotodetails(BuildContext context, id) {
    Navigator.pushNamed(context, "details",arguments: id);
 }
}
