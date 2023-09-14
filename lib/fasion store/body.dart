import 'package:flutter/material.dart';
import 'package:flutterrkcp/fasion%20store/appbarhome.dart';
import 'package:flutterrkcp/fasion%20store/sliderfasion.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppbarHome(),
              slidefasion()
            ],
          ),
        )
    );
  }
}
