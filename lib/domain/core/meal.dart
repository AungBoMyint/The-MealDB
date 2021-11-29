import 'package:json_annotation/json_annotation.dart';

part 'meal.g.dart';

@JsonSerializable()
class Meal {
  @JsonKey(name: "idMeal")
  final String id;
  @JsonKey(name: "strMeal")
  final String name;
  @JsonKey(name: "strCategory")
  final String category;
  @JsonKey(name: "strArea")
  final String area;
  @JsonKey(name: "strInstructions")
  final String instructions;
  @JsonKey(name: "strMealThumb")
  final String image;
  @JsonKey(name: "strIngredient1", defaultValue: "no ingredient")
  final String ingredient1;
  @JsonKey(name: "strIngredient2", defaultValue: "no ingredient")
  final String ingredient2;
  @JsonKey(name: "strIngredient3", defaultValue: "no ingredient")
  final String ingredient3;
  @JsonKey(name: "strIngredient4", defaultValue: "no ingredient")
  final String ingredient4;
  @JsonKey(name: "strIngredient5", defaultValue: "no ingredient")
  final String ingredient5;
  @JsonKey(name: "strIngredient6", defaultValue: "no ingredient")
  final String ingredient6;
  @JsonKey(name: "strIngredient7", defaultValue: "no ingredient")
  final String ingredient7;
  @JsonKey(name: "strIngredient8", defaultValue: "no ingredient")
  final String ingredient8;
  @JsonKey(name: "strIngredient9", defaultValue: "no ingredient")
  final String ingredient9;
  @JsonKey(name: "strIngredient10", defaultValue: "no ingredient")
  final String ingredient10;
  @JsonKey(name: "strIngredient11", defaultValue: "no ingredient")
  final String ingredient11;
  @JsonKey(name: "strIngredient12", defaultValue: "no ingredient")
  final String ingredient12;
  const Meal(
      this.id,
      this.area,
      this.category,
      this.image,
      this.ingredient1,
      this.ingredient10,
      this.ingredient11,
      this.ingredient12,
      this.ingredient2,
      this.ingredient3,
      this.ingredient4,
      this.ingredient5,
      this.ingredient6,
      this.ingredient7,
      this.ingredient8,
      this.ingredient9,
      this.instructions,
      this.name);

  factory Meal.fromJson(Map<String, dynamic> json) => _$MealFromJson(json);

  Map<String, dynamic> toJson() => _$MealToJson(this);
}
