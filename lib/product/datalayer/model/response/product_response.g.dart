// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllProductResponse _$AllProductResponseFromJson(Map<String, dynamic> json) =>
    AllProductResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      price: json['price'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      stock_status: json['stock_status'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$AllProductResponseToJson(AllProductResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'images': instance.images,
      'stock_status': instance.stock_status,
      'status': instance.status,
    };

ProductImage _$ProductImageFromJson(Map<String, dynamic> json) => ProductImage(
      src: json['src'] as String,
    );

Map<String, dynamic> _$ProductImageToJson(ProductImage instance) =>
    <String, dynamic>{
      'src': instance.src,
    };
