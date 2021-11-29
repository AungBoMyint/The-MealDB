import 'package:json_annotation/json_annotation.dart';

import 'food_by_something.dart';

part 'foodlist_by_something.g.dart';

@JsonSerializable(explicitToJson: true)
class FoodListBySomething {
  final List<FoodBySomething>? meals;
  const FoodListBySomething(this.meals);

  factory FoodListBySomething.fromJson(Map<String, dynamic> json) =>
      _$FoodListBySomethingFromJson(json);

  Map<String, dynamic> toJson() => _$FoodListBySomethingToJson(this);
}
