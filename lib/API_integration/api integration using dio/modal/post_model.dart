// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';


class ProductModel{
  int? userId;
  int? id;
  String? title;
  String? body;

 ProductModel({
   required this.userId,
    required this.id,
   required this.title,
   required this.body,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

}
