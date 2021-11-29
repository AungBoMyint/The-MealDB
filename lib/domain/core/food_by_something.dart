import 'package:json_annotation/json_annotation.dart';

part 'food_by_something.g.dart';

@JsonSerializable()
class FoodBySomething {
  @JsonKey(name: "strMeal")
  final String name;
  @JsonKey(name: "strMealThumb")
  final String image;
  @JsonKey(name: "idMeal")
  final String id;
  const FoodBySomething(this.id, this.name, this.image);

  factory FoodBySomething.fromJson(Map<String, dynamic> json) =>
      _$FoodBySomethingFromJson(json);

  Map<String, dynamic> toJson() => _$FoodBySomethingToJson(this);
}
