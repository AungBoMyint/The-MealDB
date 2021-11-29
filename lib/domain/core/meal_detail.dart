import 'package:json_annotation/json_annotation.dart';

import 'meal.dart';

part 'meal_detail.g.dart';

@JsonSerializable()
class MealDetail {
  final List<Meal> meals;
  const MealDetail(this.meals);

  factory MealDetail.fromJson(Map<String, dynamic> json) =>
      _$MealDetailFromJson(json);

  Map<String, dynamic> toJson() => _$MealDetailToJson(this);
}
