import 'package:flutter/material.dart';

class tour2 extends StatelessWidget {
  const tour2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage("https://lp-cms-production.imgix.net/2023-07/500pxRF86185481.jpg?auto=format&q=75&w=1024"),fit: BoxFit.cover),
        ),
      ),

    );
  }
}
