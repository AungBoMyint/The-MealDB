// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Meal _$MealFromJson(Map<String, dynamic> json) => Meal(
      json['idMeal'] as String,
      json['strArea'] as String,
      json['strCategory'] as String,
      json['strMealThumb'] as String,
      json['strIngredient1'] as String? ?? 'no ingredient',
      json['strIngredient10'] as String? ?? 'no ingredient',
      json['strIngredient11'] as String? ?? 'no ingredient',
      json['strIngredient12'] as String? ?? 'no ingredient',
      json['strIngredient2'] as String? ?? 'no ingredient',
      json['strIngredient3'] as String? ?? 'no ingredient',
      json['strIngredient4'] as String? ?? 'no ingredient',
      json['strIngredient5'] as String? ?? 'no ingredient',
      json['strIngredient6'] as String? ?? 'no ingredient',
      json['strIngredient7'] as String? ?? 'no ingredient',
      json['strIngredient8'] as String? ?? 'no ingredient',
      json['strIngredient9'] as String? ?? 'no ingredient',
      json['strInstructions'] as String,
      json['strMeal'] as String,
    );

Map<String, dynamic> _$MealToJson(Meal instance) => <String, dynamic>{
      'idMeal': instance.id,
      'strMeal': instance.name,
      'strCategory': instance.category,
      'strArea': instance.area,
      'strInstructions': instance.instructions,
      'strMealThumb': instance.image,
      'strIngredient1': instance.ingredient1,
      'strIngredient2': instance.ingredient2,
      'strIngredient3': instance.ingredient3,
      'strIngredient4': instance.ingredient4,
      'strIngredient5': instance.ingredient5,
      'strIngredient6': instance.ingredient6,
      'strIngredient7': instance.ingredient7,
      'strIngredient8': instance.ingredient8,
      'strIngredient9': instance.ingredient9,
      'strIngredient10': instance.ingredient10,
      'strIngredient11': instance.ingredient11,
      'strIngredient12': instance.ingredient12,
    };
