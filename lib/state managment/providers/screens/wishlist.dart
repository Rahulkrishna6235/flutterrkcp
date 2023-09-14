import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //final wishlistt=context.watch<movie>
    return Scaffold(
      appBar: AppBar(
        title: Text("wishlist ${}"),
      ),
    );
  }
}
