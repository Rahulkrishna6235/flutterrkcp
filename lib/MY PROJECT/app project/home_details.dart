import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterrkcp/Assignments/Tourism%20list/list%20data.dart';
import 'package:flutterrkcp/MY%20PROJECT/app%20project/dummydata2.dart';
import 'package:flutterrkcp/MY%20PROJECT/npackage.dart';
void main(){
  runApp(MaterialApp(
    home: homefood(),
    debugShowCheckedModeBanner: false,
    routes: {
      "details" : (context) => Npackage(),
    },
  ));
}

class homefood extends StatelessWidget {
  const homefood({super.key});

  @override
  Widget build(BuildContext context) {
    List foodoffer=[
      "https://cdn.grabon.in/gograbon/images/category/1546252575451.png",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4KBUPLqpq2Mzip6We3YMrEPY_m2UMfweNsgjPEYl9XjEB0_y_Vx5yRAkeEq_hqkkjGu4&usqp=CAU",
      "https://cdn.grabon.in/gograbon/images/web-images/uploads/1618575517942/food-coupons.jpg",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjigGuoV1ZheX_VfNSlO3YiLG8igM0ooH4iKqqWlcht60HKL9iVa9kX-v6lLIwYSlA2FY&usqp=CAU",

    ];
    final id = ModalRoute.of(context)?.settings.arguments;
    final product =
    items.firstWhere((mapfromlist) => mapfromlist["id"] == id);
    return Scaffold(backgroundColor: Colors.purple.shade100,
      appBar: AppBar(title: ListTile(title: Text("hey"),
        trailing: Icon(Icons.search),
      ),),
      body: ListView(
        children: [
          Container(height: 150,
            child:
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: CarouselSlider(items: List.generate(4, (index) => Card(
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
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30,20,0,0),
            child: Text("Choose Your Packages",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10,20,10,0),
            child:
            GestureDetector(onTap: (){},
              child: Card(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(25) ),
                color: Colors.yellow,
                child: SizedBox(height: 150,
                  child: ListTile(
                    title: Text("Normal Packge",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    subtitle: Text("1.Breakfast \n2.Lunch \n3.Dinner",style: TextStyle(fontSize: 15,),),
                    trailing: Container(height: 50,width: 70,
                      //color: Colors.orange,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                          color: Colors.orange
                      ),
                      child: Center(child: Text("prize  \n3000rs",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10,20,10,0),
            child: GestureDetector(onTap: (){},
              child: Card(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(25) ),
                color: Colors.yellow,
                child: SizedBox(height: 150,
                  child: ListTile(
                    title: Text("Normal Packge",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    subtitle: Text("1.Breakfast \n2.Lunch \n3.tea/coffee\nsnacks \n4.Dinner",style: TextStyle(fontSize: 15,),),
                    trailing: Container(height: 50,width: 70,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                        color: Colors.orange,),
                      child: Center(child: Text("prize  \n5000rs",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10,20,10,0),
            child: GestureDetector(onTap: (){},
              child: Card(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(25) ),
                color: Colors.yellow,
                child: SizedBox(height: 150,
                  child: ListTile(
                    title: Text("FIT Weight Gaining",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    subtitle: Text("1.Breakfast with Egg & Milk \n2.Lunch Include Meat \n3.Tea/coffee\nsnacks \nEvening Protein Shake \n4.Dinner",style: TextStyle(fontSize: 15,),),
                    trailing: Container(height: 50,width: 70,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                          color: Colors.orange),
                      child: Center(child: Text("prize  \n6000rs",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10,20,10,0),
            child: GestureDetector(onTap: (){},
              child: Card(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(25) ),
                color: Colors.yellow,
                child: SizedBox(height: 150,
                  child: ListTile(
                    title: Text("FIT Weight Loss",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    subtitle: Text("1.Breakfast with Egg & Milk \n2.Include Calory Lunch  \n3.Tea/coffee\nsnacks \nEvening Protein Shake \n4.Dinner",style: TextStyle(fontSize: 15,),),
                    trailing: Container(height: 50,width: 70,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
                          color: Colors.orange),
                      child: Center(child: Text("prize  \n6000rs",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
