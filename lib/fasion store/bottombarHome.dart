import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomHome extends StatelessWidget {
  const BottomHome({super.key});

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

    );
  }
}
