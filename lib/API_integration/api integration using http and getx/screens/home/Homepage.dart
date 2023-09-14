import 'package:flutter/material.dart';
import 'package:flutterrkcp/API_integration/api%20integration%20using%20http%20and%20getx/controller/productcontroller.dart';
import 'package:flutterrkcp/API_integration/api%20integration%20using%20http%20and%20getx/screens/home/widgets/ProductTile.dart';
import 'package:get/get.dart';


void main(){
  runApp(GetMaterialApp(home: Apihomepage(),));
}
class Apihomepage extends StatelessWidget {
  final productController=Get.put(ProdutController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("api page"),
      ),
      body: SizedBox(
        child: Obx((){
          if(productController.isLoading.value){
            return Center(
              child: CircularProgressIndicator(),
            );
          }else{
            return GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
              itemBuilder: (context,index){
              return ProductTile(productController.ProductList[index]);
            },
            itemCount: productController.ProductList.length,
            );
          }
        }),
      ),
    );
  }
}
