import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class Product {
  final String id;
  final String imageUrl;
  final String name;
  final num price;

  Product({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json, String docId) {
    return _$ProductFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductToJson(this);

}
