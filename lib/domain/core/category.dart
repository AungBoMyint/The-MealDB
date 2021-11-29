import 'package:json_annotation/json_annotation.dart';

part 'category.g.dart';

@JsonSerializable()
class Category {
  @JsonKey(name: "idCategory")
  final String id;
  @JsonKey(name: "strCategory")
  final String name;
  @JsonKey(name: "strCategoryThumb")
  final String image;
  @JsonKey(name: "strCategoryDescription")
  final String description;

  const Category(this.id, this.name, this.image, this.description);

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}
