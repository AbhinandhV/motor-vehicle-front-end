// To parse this JSON data, do
//
//     final posts = postsFromJson(jsonString);

import 'dart:convert';

List<Posts> postsFromJson(String str) => List<Posts>.from(json.decode(str).map((x) => Posts.fromJson(x)));

String postsToJson(List<Posts> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Posts {
  String registration;
  String model;
  String owner;

  Posts({
    required this.registration,
    required this.model,
    required this.owner,
  });

  factory Posts.fromJson(Map<String, dynamic> json) => Posts(
    registration: json["Registration"],
    model: json["Model"],
    owner: json["Owner"],
  );

  Map<String, dynamic> toJson() => {
    "Registration": registration,
    "Model": model,
    "Owner": owner,
  };
}
