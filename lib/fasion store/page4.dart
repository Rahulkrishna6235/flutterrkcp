import 'package:flutter/material.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      children: [
        SizedBox(height: 5,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("T shirt",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
            Text("T shirt",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
            Text("T shirt",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
            Text("T shirt",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
          ],
        ),

        SizedBox(height: 15,),
        Row(
          children: [
            Text("Flash Sale",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          ],
        )
      ],
    );
  }
}
