import 'dart:convert';

import 'meal_item.dart';

ResponseFilter responseFilterFromJson(String str) => ResponseFilter.fromJson(json.decode(str));

String responseFilterToJson(ResponseFilter data) => json.encode(data.toJson());

class ResponseFilter{
  List<Meal>? meals;

  ResponseFilter({this.meals});

  factory ResponseFilter.fromJson(Map<String, dynamic> json) => ResponseFilter(
    meals: List<Meal>.from(json["meals"].map((x) => Meal.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "meals": List<dynamic>.from(meals!.map((e) => e.toJson()))
  };
}