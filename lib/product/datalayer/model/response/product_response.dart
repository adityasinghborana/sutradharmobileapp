
import 'package:json_annotation/json_annotation.dart';
part 'product_response.g.dart';
@JsonSerializable()
class AllProductResponse {

  final int id;
  final String name;
  final String price;
  final List<ProductImage> images;
  final String stock_status;
  final String status;

  AllProductResponse({
    required this.id,
    required this.name,
    required this.price,
    required this.images,
    required this.stock_status,
    required this.status,
  });

  factory AllProductResponse.fromJson(Map<String, dynamic> json) =>
      _$AllProductResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AllProductResponseToJson(this);
}


@JsonSerializable()
class ProductImage {

  final String src;

  ProductImage({required this.src});

  factory ProductImage.fromJson(Map<String, dynamic> json) =>
      _$ProductImageFromJson(json);
  Map<String, dynamic> toJson() => _$ProductImageToJson(this);
}





