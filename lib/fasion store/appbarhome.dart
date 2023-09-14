import 'package:flutter/material.dart';

class AppbarHome extends StatelessWidget {
  const AppbarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return
       CustomScrollView(
         shrinkWrap: true,
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        slivers: [
          SliverAppBar(
            expandedHeight: 100,
            floating: true,
            pinned: false,
            backgroundColor: Colors.white,
            title: Text("Location",style: TextStyle(color: Colors.black),),
            leading:
            IconButton(onPressed: (){}, icon:  Icon(Icons.location_on,color: Colors.black,)),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.notification_add,color: Colors.black,size: 20,))
            ],
            bottom: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Container(
                height: 50,width: 400,
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
              actions: [
                Container(
                  height: 40,width: 40,
                  color: Colors.brown,
                  child: Icon(Icons.filter_6,color: Colors.white,),
                )
              ],
            ),
          )
        ],
      );
  }
}
