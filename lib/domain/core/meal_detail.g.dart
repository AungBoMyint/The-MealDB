// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MealDetail _$MealDetailFromJson(Map<String, dynamic> json) => MealDetail(
      (json['meals'] as List<dynamic>)
          .map((e) => Meal.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MealDetailToJson(MealDetail instance) =>
    <String, dynamic>{
      'meals': instance.meals,
    };
