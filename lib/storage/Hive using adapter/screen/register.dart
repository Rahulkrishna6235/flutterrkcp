import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutterrkcp/storage/Hive%20using%20adapter/modal/user_modal.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import '../database/Hivedb.dart';
import 'login.dart';
void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('userData');
  runApp(MaterialApp(home: Hiveregistration(),));
}

class Hiveregistration extends StatelessWidget {
  final hemail=TextEditingController();
  final hpass=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(title: const Text("Hive registration"),),
      body: Column(
        children: [
          TextField(
            controller: hemail,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Email"
            ),
          ),
          TextField(
            controller: hpass,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "password"
            ),
          ),
          ElevatedButton(onPressed: ()async{
            final regUserList=await HiveDb.instance.getUser();
            validateRegistration(regUserList);
            hemail.text="";
            hpass.text="";
          }, child: const Text("Register here")),
        ],
      ),
    );
  }

  void validateRegistration(List<User>regUserList)async {
    final eemail=hemail.text.trim();
    final epwd=hpass.text.trim();
    bool userfound=false;
     final validateEmail=EmailValidator.validate(eemail);
     if(eemail!="" && epwd!=""){
       if(validateEmail==true){
         await Future.forEach(regUserList, (userfromhive) {
           if(userfromhive.email==eemail){
             userfound=true;
           }else{
             userfound=false;
           }
         });
        if(userfound==true){
          Get.snackbar("error","user already exist",colorText: Colors.red);
        }else{
          final pwdvalidation=checkPassword(epwd);
          if(pwdvalidation==true){
            final user=User(email: eemail, password: epwd, name: '' );
            await HiveDb.instance.addUser(user);
            Get.to(Hiveloginpage);
            Get.snackbar("succes","registration succesfull",colorText: Colors.red);
          }else{
            Get.snackbar("error", 'enter a valid email!',colorText: Colors.red);
          }
        }
       }else{
       Get.snackbar("error", 'fields must not empty',colorText: Colors.red);
     }
     }
  }

 bool checkPassword(String epwd) {
    if(epwd.length<6){
      Get.snackbar("error","user already exist",colorText: Colors.red);
      return false;
    }else{
      return true;
    }
  }
}
