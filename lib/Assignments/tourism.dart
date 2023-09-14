import 'package:flutter/material.dart';
import 'package:flutterrkcp/Assignments/tourism2.dart';
void main(){
  runApp(MaterialApp(home: tour(),));
}
class tour extends StatelessWidget {
  const tour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:ListView(
       children: [
         Text("Popular",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
             width: 200,height: 150,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                  image: NetworkImage("https://lp-cms-production.imgix.net/2023-07/500pxRF86185481.jpg?auto=format&q=75&w=1024"),fit: BoxFit.fitWidth),
          ),
            child: Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Germany",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            ),
          ),
        ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             width: 200,height: 150,
             decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
               image: DecorationImage(
                   image: NetworkImage("https://lp-cms-production.imgix.net/2023-07/500pxRF86185481.jpg?auto=format&q=75&w=1024"),fit: BoxFit.fitWidth),
             ),
             child: Padding(
               padding: const EdgeInsets.only(top: 100),
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("France",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
               ),
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             width: 200,height: 150,
             decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
               image: DecorationImage(
                   image: NetworkImage("https://img.traveltriangle.com/blog/wp-content/uploads/2016/01/Amalfi_Coast_700x400-400x229.jpg"),fit: BoxFit.fitWidth),
             ),
             child: Padding(
               padding: const EdgeInsets.only(top: 100),
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("Italy",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
               ),
             ),
           ),
         ),
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: Container(
             width: 200,height: 150,
             decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),
               image: DecorationImage(
                   image: NetworkImage("https://lp-cms-production.imgix.net/2023-07/500pxRF86185481.jpg?auto=format&q=75&w=1024"),fit: BoxFit.fitWidth),
             ),
             child: Padding(
               padding: const EdgeInsets.only(top: 100),
               child: Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("India",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
               ),
             ),
           ),
         ),
       ], 
      )
      
    );
  }
}
