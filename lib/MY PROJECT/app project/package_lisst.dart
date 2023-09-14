
import 'package:flutter/material.dart';
import 'package:flutterrkcp/MY%20PROJECT/app%20project/dummydata2.dart';
import 'package:flutterrkcp/MY%20PROJECT/app%20project/home_details.dart';


void main() {
  runApp(MaterialApp(
    home: ProductList(),
    debugShowCheckedModeBanner: false,
    // named routes used in Navigator.pushNamed()
    routes: {
      "details": (context) => homefood(),
      // "cart": (context) => ListView3(),
    },
  ));
}

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Products"),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text("MENU",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text("what Your Having",style: TextStyle(fontSize: 15),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(height: 50,
              decoration: BoxDecoration(
                  color: Colors.lightGreenAccent,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Center(child: const Text("BreakFast",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
            ),
          ),
          Container(
            child: GridView.count(crossAxisCount: 2,
              shrinkWrap: true,
              childAspectRatio: 0.76,
              children: [
                for(int i=1;i<=6;i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                      width: 200,height: 260,
                      decoration: BoxDecoration(color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black,
                                blurRadius: 8,
                                spreadRadius: 4
                            )
                          ]
                      ),
                      child: ListView(
                        padding: EdgeInsets.all(15),
                        children:items.map((e) =>InkWell(
                          onTap: ()=> gotodetails(context,e['id']),
                          child: Container(
                            child: Image.asset(e["image"]),
                            //onTap: ()=> gotodetails(context,e['id']),
                            // onTap: ()=> Nav2igator.pushNamed(context, 'details',arguments: e['id']),
                          ),
                        )).toList(),
                     // ),
                    ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  void gotodetails(BuildContext context, id) {   // id = e['id'] - id of item that we tapped
    Navigator.pushNamed(context, "details", arguments: id);
  }
}