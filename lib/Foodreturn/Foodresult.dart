// To parse this JSON data, do
//
//     final foodName = foodNameFromJson(jsonString);

import 'dart:convert';

FoodName foodNameFromJson(String str) => FoodName.fromJson(json.decode(str));

String foodNameToJson(FoodName data) => json.encode(data.toJson());

class FoodName {
  FoodName({
    this.ok,
    this.filename,
    this.objects,
  });

  bool ok;
  String filename;
  List<Object> objects;

  factory FoodName.fromJson(Map<String, dynamic> json) => FoodName(
    ok: json["OK"],
    filename: json["filename"],
    objects: List<Object>.from(json["objects"].map((x) => Object.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "OK": ok,
    "filename": filename,
    "objects": List<dynamic>.from(objects.map((x) => x.toJson())),
  };
}

class Object {
  Object({
    this.label,
    this.rank,
    this.result,
    this.score,
  });

  String label;
  String rank;
  String result;
  String score;

  factory Object.fromJson(Map<String, dynamic> json) => Object(
    label: json["label"],
    rank: json["rank"],
    result: json["result"],
    score: json["score"],
  );

  Map<String, dynamic> toJson() => {
    "label": label,
    "rank": rank,
    "result": result,
    "score": score,
  };
}
