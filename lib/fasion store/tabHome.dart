import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CategoryPage(),
  ));
}

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return
       DefaultTabController(
          length: 6,
          child: Column(
            children: <Widget>[
              ButtonsTabBar(
                physics:const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                radius: 20,
                backgroundColor: Colors.brown,
                unselectedBackgroundColor: Colors.white,
                unselectedLabelStyle: const TextStyle(color: Colors.black),
                labelStyle:
                const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                tabs: [
                  const Tab(
                    text: "    All    ",
                  ),
                  const Tab(
                    text: "   Jackect   ",
                  ),
                  const Tab(
                    text: "   Shirt   ",
                  ),
                  const Tab(
                    text: "   Pant   ",
                  ),
                  const Tab(
                    text: "   T-Shirt   ",
                  ),
                  const Tab(
                    text: "   Sweater   ",
                  ),
                ],
              ),
            ],
          ),
      );

  }
}