
import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: Fhome(),
  debugShowCheckedModeBanner: false,
  ));
}

class Fhome extends StatelessWidget {
  const Fhome({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 330,top: 30),
            child: Text("Location"),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.location_on,),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5)
                ),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)
                      ),
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search)
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 40,width: 40,
                color: Colors.brown,
                child: Icon(Icons.filter_6,color: Colors.white,),
              )
            ],
          ),

          SizedBox(height: 10,),
          Text("Catogory"),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 60,width: 60,
                child: Icon(Icons.add),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.brown.shade200
                ),
              ),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              Text("T shirt"),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            children: [
              Text("Flash Sale")
            ],
          ),
          SizedBox(height: 6,),

        ],
      ),
    );
  }
}
