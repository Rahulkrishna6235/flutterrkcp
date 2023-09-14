import 'package:flutter/material.dart';
import 'package:flutterrkcp/MY%20PROJECT/progrid2.dart';



class Npackage extends StatelessWidget {
  const Npackage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    SingleChildScrollView(
      child: Column(
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
          SizedBox(height: 20,),
          progrid(),
        ],
      ),
    )
      //Scaffold(
      //backgroundColor:Colors.purple.shade100,
// body:
// ListView(
//   shrinkWrap: true,
//   children: [
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: const Text("MENU",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
//     ),
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: const Text("what Your Having",style: TextStyle(fontSize: 15),),
//     ),
//     Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(height: 50,
//         decoration: BoxDecoration(
//           color: Colors.lightGreenAccent,
//           borderRadius: BorderRadius.circular(15)
//         ),
//         child: Center(child: Text("BreakFast",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
//       ),
//     ),
//     SizedBox(height: 20,),
//     progrid(),
//   ],
// ),
    );
  }
}
