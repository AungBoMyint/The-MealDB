// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'foodlist_by_something.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodListBySomething _$FoodListBySomethingFromJson(Map<String, dynamic> json) =>
    FoodListBySomething(
      (json['meals'] as List<dynamic>?)
          ?.map((e) => FoodBySomething.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FoodListBySomethingToJson(
        FoodListBySomething instance) =>
    <String, dynamic>{
      'meals': instance.meals?.map((e) => e.toJson()).toList(),
    };
