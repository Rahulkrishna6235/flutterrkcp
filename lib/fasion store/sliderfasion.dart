import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class slidefasion extends StatelessWidget {
  const slidefasion({super.key});

  @override
  Widget build(BuildContext context) {
    List tshirt=[
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSeob08X79LM-_POQ-YtzErmLl5jEBuXbWrdw&usqp=CAU",
      "https://img01.ztat.net/article/spp-media-p1/c2190774e08446e79f10b12b26bb4c44/d3cfdf15ce04405fa8ac9adfb6d72366.jpg?imwidth=300",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTA6OeytFQjD4GyGQMUs0FK2MPKBJ0oeSYdmg&usqp=CAU",
      "https://assets.ajio.com/medias/sys_master/root/20230314/KnZZ/64104e2cf997dde6f4f8b2eb/-473Wx593H-443006329-beige-MODEL4.jpg"
    ];

    return
       Container(height: 200,
        child:
        CarouselSlider(
            items: List.generate(4, (index) => Card(
          child: Image(
            fit: BoxFit.cover,
            image: NetworkImage(tshirt[index]),width: 250,),
        )),
            options:CarouselOptions(
              scrollPhysics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
              height: 200,
              aspectRatio: 16/9,
              viewportFraction: .5,
              initialPage: 1,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 0),
              enableInfiniteScroll: true,
              autoPlayCurve: Curves.easeInOutCubicEmphasized,
              enlargeCenterPage: false,
              enlargeFactor: .3,
              scrollDirection: Axis.horizontal,
            )
        ),
      );
  }
}
