import 'dart:convert';

ResponseDetail responseDetailFromJson(String str) =>
    ResponseDetail.fromJson(json.decode(str));


class ResponseDetail {
  List<Map<String, dynamic>> meals;

  ResponseDetail({required this.meals});

  factory ResponseDetail.fromJson(Map<String, dynamic> json) => ResponseDetail(
      meals: List<Map<String, dynamic>>.from(json["meals"].map((x) =>
          Map.from(x).map(
                  (k, v) => MapEntry<String, dynamic>(k, v == null ? null : v)))),
  );

  Map<String, dynamic> toJson() => {
    "meals" : List<dynamic>.from(meals.map((x) => Map.from(x).map(
        (k, v) => MapEntry<String, dynamic>(k, v == null ? null: v)))),
  };
}