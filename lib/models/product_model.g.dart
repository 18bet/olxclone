// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as String,
      imageUrls: (json['imageUrls'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      name: json['name'] as String,
      price: json['price'] as num,
      description: json['description'] as String?,
      category: json['category'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'imageUrls': instance.imageUrls,
      'name': instance.name,
      'price': instance.price,
      'description': instance.description,
      'category': instance.category,
      'location': instance.location,
    };
