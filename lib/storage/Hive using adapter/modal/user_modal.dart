import 'package:hive/hive.dart';
part 'user_modal.g.dart';

@HiveType(typeId: 0)
class User{
  @HiveField(0)
  final String email;
  @HiveField(1)
  final String password;
  @HiveField(2)
  String? id;
  @HiveField(3)
  String name;
  User({required this.email,required this.password,required this.name}){
    id=DateTime.now().microsecondsSinceEpoch.toString();

  }
}