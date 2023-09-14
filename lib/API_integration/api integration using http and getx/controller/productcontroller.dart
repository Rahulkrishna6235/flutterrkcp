import 'package:flutterrkcp/API_integration/api%20integration%20using%20http%20and%20getx/services/http%20service.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ProdutController extends GetxController{
  var isLoading =true.obs;
  var ProductList=[].obs;
  @override
  void onInit() {
   loadProducts();
    super.onInit();
  }

  void loadProducts() async{   
    try{
      isLoading(true);
     var products=await HttpService.fetchProducts();
     if(products!=null){
       ProductList.value= products;
     }
    }catch(e){
      print(e);
    }finally{
      isLoading(false);
    }
  }

}