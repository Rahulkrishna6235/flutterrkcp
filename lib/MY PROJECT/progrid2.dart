import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
void main(){
  runApp(MaterialApp(home: progrid(),));
}

class progrid extends StatelessWidget {
  const progrid({super.key});
  @override
  Widget build(BuildContext context) {
    List imagelist=[
      "assets/imagepro/appambkf.jpg",
      "assets/imagepro/download.jpg",
      "assets/imagepro/idalybkf.webp",
      "assets/imagepro/idiyappmbkf.jpg",
      "assets/imagepro/puribkf.jpg",
      "assets/imagepro/Rava-Upma.jpg",
    ];
    List textlist=[
      "Appam and curry",
      "puttum kadala",
      "Idaly sambar",
      "Idiyappam & curry",
      "poori and curry",
      "uppumavu",
    ];
    return
      Scaffold(
      body:Column(
        children: [
          SizedBox(
            height: 50,
            child: Padding(
              padding: const EdgeInsets.only(right: 250,top: 20),
              child: const Text(
                "MENU",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
          ),
          SizedBox(
            height: 40,
            child:  Padding(
              padding: const EdgeInsets.only(right: 220,top: 10),
              child: const Text("what Your Having",style: TextStyle(fontSize: 15),),
            ),
          ),
          SizedBox(
            height: 70,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 20,
                decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: const Text("BreakFast",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
              ),
            ),
          ),
          SizedBox(
            height: 600,
            child: Container(
              child:
              GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 1,
                  mainAxisSpacing: 10,crossAxisSpacing: 10
              ),
                  itemCount: imagelist.length,
                  itemBuilder:(context,index){
                    return
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                        width: 200,height: 260,
                        decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 8,
                                  spreadRadius: 4
                              )
                            ]
                        ),
                        child: Column(
                          children: [
                            InkWell(
                                onTap: (){},
                                child:Container(height: 100,
                                  margin: EdgeInsets.all(10),
                                  child: SizedBox(
                                    width: 200,height: 150,
                                    child: Image.asset(imagelist[index],
                                      height: 150,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                )
                            ),
                            Text(textlist[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            RatingBar.builder(itemBuilder: (context,_)=>Icon(Icons.star,color: Colors.yellow,),
                                itemCount: 5,
                                initialRating: 3,minRating: 1,
                                direction: Axis.horizontal,itemSize: 20,itemPadding:  EdgeInsets.symmetric(horizontal: 3),
                                onRatingUpdate: (rating){
                                  print("rating");
                                }),
                          ],
                        ),
                      );
                  }),
            ),
          )
        ],
      )
        //  Container(
        // child:
        //   GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //     maxCrossAxisExtent: 200,
        //     childAspectRatio: 1,
        //     mainAxisSpacing: 10,crossAxisSpacing: 10
        //   ),
        //       itemCount: imagelist.length,
        //       itemBuilder:(context,index){
        //     return
        //       Container(
        //       margin: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
        //       width: 200,height: 260,
        //       decoration: BoxDecoration(color: Colors.white,
        //           borderRadius: BorderRadius.circular(15),
        //           boxShadow: [
        //             BoxShadow(
        //                 color: Colors.black,
        //                 blurRadius: 8,
        //                 spreadRadius: 4
        //             )
        //           ]
        //       ),
        //       child: Column(
        //         children: [
        //           InkWell(
        //               onTap: (){},
        //               child:Container(height: 100,
        //                 margin: EdgeInsets.all(10),
        //                 child: SizedBox(
        //                   width: 200,height: 150,
        //                   child: Image.asset(imagelist[index],
        //                     height: 150,
        //                     fit: BoxFit.fill,
        //                   ),
        //                 ),
        //               )
        //           ),
        //           Text(textlist[index],style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        //           RatingBar.builder(itemBuilder: (context,_)=>Icon(Icons.star,color: Colors.yellow,),
        //               itemCount: 5,
        //               initialRating: 3,minRating: 1,
        //               direction: Axis.horizontal,itemSize: 20,itemPadding:  EdgeInsets.symmetric(horizontal: 3),
        //               onRatingUpdate: (rating){
        //                 print("rating");
        //               }),
        //         ],
        //       ),
        //     );
        //   }),
        // )
    );
  }
}
