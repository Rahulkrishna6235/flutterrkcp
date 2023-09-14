import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: StoreItem(),));
}
class StoreItem extends StatelessWidget {
  List Store_Items = [
    {
      "Image": "assets/FFZ/img_9.png",
      "Name": "Carrot",
      "Rate": "Rs 40",
      "Qty": "1 Kg"
    },
    {
      "Image": "assets/FFZ/img_10.png",
      "Name": "Kiwi",
      "Rate": "Rs 100",
      "Qty": "1 Kg"
    },
    {
      "Image": "assets/FFZ/img_11.png",
      "Name": "Banana",
      "Rate": "Rs 30",
      "Qty": "1 Kg"
    },
    {
      "Image": "assets/FFZ/img_12.png",
      "Name": "Broccoli",
      "Rate": "Rs 70",
      "Qty": "1 Kg"
    },
    {
      "Image": "assets/FFZ/img_13.png",
      "Name": "Tomato",
      "Rate": "Rs 120",
      "Qty": "1 Kg"
    },
    {
      "Image": "assets/FFZ/img_14.png",
      "Name": "Ladies Finger",
      "Rate": "Rs 40",
      "Qty": "1 Kg"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(padding: EdgeInsets.symmetric(horizontal: 6,vertical: 10),
        shrinkWrap: true,
        itemCount: 6,
        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10,childAspectRatio: .85),
        itemBuilder: (context, index) => Container(
          decoration:
          BoxDecoration(border: Border.all(color: Colors.white)),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(Store_Items[index]['Image']))),
                ),
                SizedBox(height: 10,),
                Text(Store_Items[index]['Name']),
                SizedBox(height: 10,),
                Text(Store_Items[index]['Rate'],style: TextStyle(fontWeight: FontWeight.w500),),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(Store_Items[index]['Qty']),
                    ElevatedButton(style: ElevatedButton.styleFrom(primary: Colors.green,onPrimary: Colors.black),
                        onPressed: (){}, child: Text('Add'))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}