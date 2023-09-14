import 'package:hive/hive.dart';

import '../modal/user_modal.dart';

class HiveDb{

  HiveDb._internal();
 static HiveDb instance=HiveDb._internal();
  factory  HiveDb(){
    return instance;
  }

  Future<List<User>> getUser() async{
    final db=await Hive.openBox<User>('user data');
    return db.values.toList();
  }

  addUser(User user) async{
    final db =await Hive.openBox<User>('userdata');
    db.put(user.id, user);
  }
}