import 'package:flutter/material.dart';
import 'package:flutterrkcp/API_integration/api%20integration%20using%20dio/controller/product%20controller.dart';
import 'package:flutterrkcp/API_integration/api%20integration%20using%20dio/utils/colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:lottie/lottie.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import 'detailspage.dart';
void main(){
  runApp(GetMaterialApp(home: Home(),));
}
class Home extends StatelessWidget {
Product_controller controller=Get.put(Product_controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mycolors.bgcolor,
      floatingActionButton: Obx(() => controller.isInternetConnected.value?
      buildFAB():Container()
      ),
      body: Obx(() => SizedBox(width: double.infinity,
      child: controller.isInternetConnected.value?
      (controller.isLoading.value?loadanimation():getData())
        :noInternet(context),
      )),
    );
  }

  FloatingActionButton buildFAB() {
    return FloatingActionButton(onPressed: (){
      controller.isListScrollDown.value? controller.ScrolltoUp():controller.ScrolltoDown();
    },
    backgroundColor: mycolors.pgcolor,
      child: FaIcon(
        controller.isListScrollDown.value?
            FontAwesomeIcons.arrowUp: FontAwesomeIcons.arrowDown
      ),
    );
  }

 Center loadanimation() {
    return Center(
      child: SizedBox(
        width: 150,height: 150,
        child: Lottie.asset("name"),
      ),
    );
 }

 RefreshIndicator getData() {
   return RefreshIndicator(
     onRefresh: () {
       return controller.getposts();
     },
     child: ScrollablePositionedList.builder(
         itemScrollController: controller.itemController,
         physics: BouncingScrollPhysics(),
         itemCount: controller.post.length,
         itemBuilder: (context, index) {
           return InkWell(
             onTap: () => Get.to(DetailsDio(index: index)),
             child: Card(
               child: ListTile(
                 leading: Container(
                   height: 50,
                   width: 50,
                   decoration: BoxDecoration(
                       color: Colors.grey,
                       borderRadius: BorderRadius.circular(10)),
                   child: Center(
                     child: Text(controller.post[index].id.toString()),
                   ),
                 ),
                 title: Text(
                   controller.post[index].title,
                   style: TextStyle(fontSize: 18),
                 ),
                 subtitle: Text(controller.post[index].body),
               ),
             ),
           );
         }),
   );
 }

 Center noInternet(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: 100,width: 100,
            child: Lottie.asset("name"),
          ),
          MaterialButton(onPressed: ()=>ontapMeterialButton(context),
          child: Text("try again"),
          )
        ],
      ),
    );
 }

 void ontapMeterialButton(BuildContext context) async{
    if(await InternetConnectionChecker().hasConnection==true){
      controller.getposts();
    }else{
      showTopSnackBar(Overlay.of(context),
      CustomSnackBar.error(message: 'no internet connection!!1plz again')
      );
    }
 }
}
