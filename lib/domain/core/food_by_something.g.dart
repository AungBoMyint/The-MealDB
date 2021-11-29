// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_by_something.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodBySomething _$FoodBySomethingFromJson(Map<String, dynamic> json) =>
    FoodBySomething(
      json['idMeal'] as String,
      json['strMeal'] as String,
      json['strMealThumb'] as String,
    );

Map<String, dynamic> _$FoodBySomethingToJson(FoodBySomething instance) =>
    <String, dynamic>{
      'strMeal': instance.name,
      'strMealThumb': instance.image,
      'idMeal': instance.id,
    };
