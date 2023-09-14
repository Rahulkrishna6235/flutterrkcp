import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return
        ListView(shrinkWrap: true,
          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          children: [
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Category",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                TextButton(onPressed: (){}, child: Text("See All",style: TextStyle(color: Colors.black),))
              ],
            ),
            SizedBox(height: 10,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,width: 60,
                  child: Icon(Icons.add),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.brown.shade100
                  ),
                ),
                Container(
                  height: 60,width: 60,
                  child: Icon(Icons.add),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.brown.shade100
                  ),
                ),
                Container(
                  height: 60,width: 60,
                  child: Icon(Icons.add),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.brown.shade100
                  ),
                ),
                Container(
                  height: 60,width: 60,
                  child: Icon(Icons.add),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.brown.shade100
                  ),
                ),
              ],
            ),
          ],
        );
  }
}
