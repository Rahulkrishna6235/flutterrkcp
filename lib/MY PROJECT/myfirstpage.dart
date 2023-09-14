import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: myfirstpage(),
  ));
}

class myfirstpage extends StatelessWidget {
  const myfirstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 300),
            child: Column(
              children: [
                Text("WELCOME",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                SizedBox(width: 200,height: 50,
                    child: ElevatedButton(onPressed: (){}, child: Text ("Login",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.white),),
                      style: ElevatedButton.styleFrom(primary:Colors.black26 ),)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(40,50,40,0),
                  child: SizedBox(width: 200,height: 50,
                      child: ElevatedButton(onPressed: (){}, child: Text ("Sign in"),
                        style: ElevatedButton.styleFrom(primary:Colors.black26),)),
                ),
              ],
            ),
          ),
        )

    );
  }
}