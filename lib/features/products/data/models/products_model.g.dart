// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductsModel _$ProductsModelFromJson(Map<String, dynamic> json) =>
    ProductsModel(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      description: json['description'] as String,
      image: json['image'] as String,
      rating: (json['rating'] as List<dynamic>)
          .map((e) => Rating.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProductsModelToJson(ProductsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'description': instance.description,
      'image': instance.image,
      'rating': instance.rating,
    };

Rating _$RatingFromJson(Map<String, dynamic> json) => Rating(
  rate: (json['rate'] as num).toDouble(),
  count: (json['count'] as num).toInt(),
);

Map<String, dynamic> _$RatingToJson(Rating instance) => <String, dynamic>{
  'rate': instance.rate,
  'count': instance.count,
};
