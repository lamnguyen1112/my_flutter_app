// To parse this JSON data, do
//
//     final listResponse = listResponseFromJson(jsonString);

import 'dart:convert';
import 'package:my_flutter_app/src/domain/item_model.dart';

ListResponse listResponseFromJson(String str) =>
    ListResponse.fromJson(json.decode(str));

String listResponseToJson(ListResponse data) => json.encode(data.toJson());

class ListResponse {
  List<ItemModel> items;

  ListResponse({
    required this.items,
  });

  factory ListResponse.fromJson(Map<String, dynamic> json) => ListResponse(
        items: List<ItemModel>.from(
            json["items"].map((x) => ItemModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}
