import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: CSlider(),));
}

class CSlider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CarouselSlider(
        items: List.generate(10, (index) =>
    const Card(
      color: Colors.green,
      child: Center(
          child: Icon(
            Icons.ac_unit,
            size: 40,)),
    )),
            options: CarouselOptions(
                height: 800,
                aspectRatio: 16 / 9,
                viewportFraction: .5,
                initialPage: 2,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                autoPlayCurve: Curves.easeInOutCubicEmphasized,
                enlargeCenterPage: false,
                enlargeFactor: .3,
                scrollDirection: Axis.horizontal
            )),);
  }
}