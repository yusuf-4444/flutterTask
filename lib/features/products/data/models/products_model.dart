import 'package:json_annotation/json_annotation.dart';

part 'products_model.g.dart';

@JsonSerializable()
class ProductsModel {
  final List<Data> products;

  ProductsModel({required this.products});

  factory ProductsModel.fromJson(Map<String, dynamic> json) =>
      _$ProductsModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductsModelToJson(this);
}

@JsonSerializable()
class Data {
  final int id;
  final String title;
  final double price;
  final String description;
  final double discountPercentage;
  final List<String> images;
  final double rating;

  Data({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.images,
    required this.discountPercentage,
    required this.rating,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
