import 'dart:typed_data';

import 'package:hive_flutter/hive_flutter.dart';

part 'ingredient_hive.g.dart';

@HiveType(typeId: 1)
class IngredientHive extends HiveObject {
  @HiveField(1)
  String name;
  @HiveField(2)
  Uint8List ingredientImage;
  IngredientHive({required this.name, required this.ingredientImage});

  @override
  String toString() {
    return 'IngredientHive(name: $name, ingredientImage: $ingredientImage)';
  }

  IngredientHive copyWith({
    String? name,
    Uint8List? ingredientImage,
  }) {
    return IngredientHive(
        name: name ?? this.name,
        ingredientImage: ingredientImage ?? this.ingredientImage);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is IngredientHive &&
        other.name == name &&
        other.ingredientImage == ingredientImage;
  }

  @override
  int get hashCode {
    return name.hashCode ^ ingredientImage.hashCode;
  }
}
