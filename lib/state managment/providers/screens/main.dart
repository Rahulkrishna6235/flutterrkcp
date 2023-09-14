import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutterrkcp/state%20managment/providers/modal/movie.dart';

void main(){
  runApp(ChangeNotifierProvider<Movieprovider>(create: (context)=>Mo(),
  chi))
}
class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var movie_to_wishlist=context
    return Scaffold(
      appBar: AppBar(title: Text(""),),
      body: Padding(padding: EdgeInsets.all(10),
      child: Column(
        children: [
       ElevatedButton.icon(onPressed: (){}, icon: Icon(Icons.favorite), label: Text("wishlist")),
          Expanded(child: ListView.builder(
            itemCount: ,
              itemBuilder: (context,index){
              final currentmovie=movies[index];
            return Card(
              child: ListTile(
            title: Text(),
              ),
            );
          }))
        ],
      ),
      ),
    );
  }
}
