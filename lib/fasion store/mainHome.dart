import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutterrkcp/fasion%20store/appbarhome.dart';

import 'package:flutterrkcp/fasion%20store/page3.dart';
import 'package:flutterrkcp/fasion%20store/page4.dart';
import 'package:flutterrkcp/fasion%20store/sliderfasion.dart';
import 'package:flutterrkcp/fasion%20store/tabHome.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MainHome(),));
}

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    int currentindex=0;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 65,
        child: CustomNavigationBar(
          isFloating: true,
          borderRadius: Radius.circular(40),
          selectedColor: Colors.white,
          unSelectedColor: Colors.brown,
          backgroundColor: Colors.black,
          strokeColor: Colors.transparent,
          scaleFactor: 0.1,
          iconSize: 40,
          items:[
            CustomNavigationBarItem(icon:Icon(Icons.home)),
            CustomNavigationBarItem(icon: Icon(Icons.home)),
            CustomNavigationBarItem(icon: Icon(Icons.home)),
            CustomNavigationBarItem(icon: Icon(Icons.home)),

          ],
          currentIndex: currentindex,
          onTap: (index){},
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          children: [
            AppbarHome(),
            SizedBox(height: 16,),
            slidefasion(),
            Page3(),
            Page4(),
            SizedBox(height: 10,),
            CategoryPage(),

          ],
        ),
      ),
    );
  }
}
