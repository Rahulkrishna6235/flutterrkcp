import 'package:flutter/material.dart';
import 'package:flutterrkcp/Assignments/Tourism%20list/list%20data.dart';

class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final product =
    products.firstWhere((mapfromlist) => mapfromlist["id"] == id);

    //comparing id from previous page with id from list and store the value from that id
    //to product which is Map<String dynamic>
    return Scaffold(
        appBar: AppBar(
          title: Text("My Single Product"),
        ),
        body: Card(
          child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    product["image"],
                    height: 200,
                    width: 200,
                  ),
                  Text(
                    product["name"],
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Center(child: Text(product["description"])),
                ],
              )),
        ));
  }
}
