import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main(){

  runApp(MaterialApp(home: foodhome(),));
}

class foodhome extends StatelessWidget {
  const foodhome({super.key});

  @override
  Widget build(BuildContext context) {
    List foodoffer=[
      "https://cdn.grabon.in/gograbon/images/category/1546252575451.png",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4KBUPLqpq2Mzip6We3YMrEPY_m2UMfweNsgjPEYl9XjEB0_y_Vx5yRAkeEq_hqkkjGu4&usqp=CAU",
      "https://cdn.grabon.in/gograbon/images/web-images/uploads/1618575517942/food-coupons.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjigGuoV1ZheX_VfNSlO3YiLG8igM0ooH4iKqqWlcht60HKL9iVa9kX-v6lLIwYSlA2FY&usqp=CAU",

    ];

    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: Text("HEY User....",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
           trailing: Icon(Icons.search),
          ),
          Container(height: 200,
            child:
      CarouselSlider(items: List.generate(4, (index) => Card(
              child: Image(
                fit: BoxFit.cover,
                image: NetworkImage(foodoffer[index]),),
            )),
                options:CarouselOptions(
                  height: 300,
                  aspectRatio: 16/9,
                  viewportFraction: .5,
                  initialPage: 1,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 2),
                  enableInfiniteScroll: true,
                  autoPlayCurve: Curves.easeInOutCubicEmphasized,
                  enlargeCenterPage: false,
                  enlargeFactor: .3,
                  scrollDirection: Axis.horizontal,
                )

            ),
          ),
          Container( height: 100,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 InkWell(onTap: (){},
                    child: Container(
                      width: 100,height: 100,
                     // color: Colors.purple,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/b/b0/Hamburger_%2812164386105%29.jpg/1200px-Hamburger_%2812164386105%29.jpg")),
                      ),
                    ),
                  ),
                  InkWell(onTap: (){},
                    child: Container(
                      width: 100,height: 100,
                      //color: Colors.yellow,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgRScttj5VJLrwXmzvETFgD5rf9oSd5aiAksdZ5IQl3iNr25yEPxmTPXD7O6xhw_2ReoQ&usqp=CAU")),
                      ),
                    ),
                  ),
                  InkWell(onTap: (){},
                    child: Container(
                      width: 100,height: 100,
                     // color: Colors.black,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage("https://cdn-efohi.nitrocdn.com/nzhjCTbLRQsVpZZpEWBzEjrDSwxMfKMK/assets/images/optimized/rev-b2bd2d0/yummycake.in/wp-content/uploads/2014/07/exotic-chocolate-cake-376x376.jpg")),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container( height: 100,
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(onTap: (){},
                    child: Container(
                      width: 100,height: 100,
                      //color: Colors.purple,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage("https://thegourmetmarket.co.uk/cdn/shop/products/Wagyua5fillet2_450x.jpg?v=1616863660")),
                      ),
                    ),
                  ),
                  InkWell(onTap: (){},
                    child: Container(
                      width: 100,height: 100,
                     // color: Colors.yellow,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage("https://www.bigbasket.com/media/uploads/p/l/800380134_1-machhiwala-fish-catla-single-bone.jpg")),
                      ),
                    ),
                  ),
                  InkWell(onTap: (){},
                    child: Container(
                      width: 100,height: 100,
                      //color: Colors.black,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXX5BGNWNSrjdHDJEj9JrJno8wLONqIFby9OeQKlEk871za--jtQOXZ425E6BwQZUrsAs&usqp=CAU")),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10,0,0,20),
            child: Text("Near By Restuarents",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ),
          Card(
            child: ListTile(
              leading: Image.network("https://scontent.fccj6-2.fna.fbcdn.net/v/t39.30808-6/361095945_693476772792575_6196330355720593119_n.jpg?stp=dst-jpg_p526x296&_nc_cat=102&ccb=1-7&_nc_sid=730e14&_nc_ohc=D_u7KyPigU0AX9EQ58o&_nc_ht=scontent.fccj6-2.fna&oh=00_AfCZIG2RUOj-hTcNDzSva44HupjX5xrG4HUDhSYTpBMMlA&oe=64E44DEE"),
              title: Text("Hotal Aryas",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              trailing: ElevatedButton(onPressed: (){},child: Text("View",style: TextStyle(fontSize: 10,color: Colors.white),),style: ElevatedButton.styleFrom(primary: Colors.yellow),),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.network("https://b.zmtcdn.com/data/pictures/chains/1/18691271/b9e1524a6ac4ffcf085cc410099833a9.jpg?fit=around|750:500&crop=750:500;*,*"),
              title: Text("KFC",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              trailing: ElevatedButton(onPressed: (){},child: Text("View",style: TextStyle(fontSize: 10,color: Colors.white),),style: ElevatedButton.styleFrom(primary: Colors.yellow),),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.network("https://b.zmtcdn.com/data/dish_photos/912/5600c15850e7c3b3f22b2d9363659912.jpg"),
              title: Text("Chicking",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              trailing: ElevatedButton(onPressed: (){},child: Text("View",style: TextStyle(fontSize: 10,color: Colors.white),),style: ElevatedButton.styleFrom(primary: Colors.yellow),),
            ),
          ),
          Card(
            child: ListTile(
              leading: Image.network("https://lh3.googleusercontent.com/p/AF1QipOpK9Y73B6RZipbEys367JTJ-e_NKppiQS6DjLD=w1080-h608-p-no-v0"),
              title: Text("Nellikka Restuarent",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
              trailing: ElevatedButton(onPressed: (){},child: Text("View",style: TextStyle(fontSize: 10,color: Colors.white),),style: ElevatedButton.styleFrom(primary: Colors.yellow),),
            ),
          )
        ],
      ),
    );
  }
}
