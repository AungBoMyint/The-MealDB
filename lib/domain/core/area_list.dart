import 'package:json_annotation/json_annotation.dart';

import 'area.dart';

part 'area_list.g.dart';

@JsonSerializable(explicitToJson: true)
class AreaList {
  final List<Area> meals;
  const AreaList(this.meals);

  factory AreaList.fromJson(Map<String, dynamic> json) =>
      _$AreaListFromJson(json);

  Map<String, dynamic> toJson() => _$AreaListToJson(this);
}
