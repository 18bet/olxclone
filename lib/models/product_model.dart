import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class Product {
  final String id;
  final List<String>? imageUrls;
  final String name;
  final num price;
  final String? description;
  final String category;
  final String location;

  Product({
    required this.id,
    this.imageUrls,
    required this.name,
    required this.price,
    this.description,
    required this.category,
    required this.location,
  });

  factory Product.fromJson(Map<String, dynamic> json, String docId) {
    return _$ProductFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ProductToJson(this);
}
