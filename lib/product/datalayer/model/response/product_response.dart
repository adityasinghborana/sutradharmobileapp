import 'package:json_annotation/json_annotation.dart';

class AllProductResponse {
  final int id;
  final String name;
  final String price;
  final List<ProductImage> images;
  final String stockStatus;
  final String status;

  AllProductResponse({
    required this.id,
    required this.name,
    required this.price,
    required this.images,
    required this.stockStatus,
    required this.status,
  });

}

class ProductImage {
  final String src;

  ProductImage({required this.src});



}