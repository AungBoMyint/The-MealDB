import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meal_app/hive/ingredient_hive.dart';
import 'dart:typed_data';

part 'meal_hive.g.dart';

@HiveType(typeId: 2)
class MealHive extends HiveObject {
  @HiveField(1)
  String name;
  @HiveField(2)
  String category;
  @HiveField(3)
  String area;
  @HiveField(4)
  String instructions;
  @HiveField(5)
  Uint8List? image;
  @HiveField(6)
  List<IngredientHive>? ingredientHiveList;
  @HiveField(7)
  double progressValue;
  @HiveField(8)
  int id;
  MealHive({
    required this.name,
    required this.category,
    required this.area,
    required this.instructions,
    required this.image,
    required this.ingredientHiveList,
    required this.progressValue,
    required this.id,
  });

  @override
  String toString() {
    return "MealHive(name: $name, category: $category, area: $area, instructions: $instructions, image: $image, ingredientHiveList: $ingredientHiveList, progressValue: $progressValue,id: $id)";
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is MealHive &&
        other.name == name &&
        other.image == image &&
        other.progressValue == progressValue &&
        other.area == area &&
        listEquals(other.ingredientHiveList, ingredientHiveList) &&
        other.instructions == instructions &&
        other.category == category &&
        other.id == id;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        image.hashCode ^
        progressValue.hashCode ^
        id.hashCode ^
        ingredientHiveList.hashCode ^
        category.hashCode ^
        instructions.hashCode ^
        area.hashCode;
  }

  MealHive copyWith({
    String? name,
    Uint8List? image,
    double? progressValue,
    int? id,
    List<IngredientHive>? ingredientHiveList,
    String? area,
    String? instructions,
    String? category,
  }) {
    return MealHive(
      name: name ?? this.name,
      image: image ?? this.image,
      progressValue: progressValue ?? this.progressValue,
      id: id ?? this.id,
      ingredientHiveList: ingredientHiveList ?? this.ingredientHiveList,
      instructions: instructions ?? this.instructions,
      area: area ?? this.area,
      category: category ?? this.category,
    );
  }
}
