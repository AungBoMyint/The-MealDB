// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'area_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AreaList _$AreaListFromJson(Map<String, dynamic> json) => AreaList(
      (json['meals'] as List<dynamic>)
          .map((e) => Area.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AreaListToJson(AreaList instance) => <String, dynamic>{
      'meals': instance.meals.map((e) => e.toJson()).toList(),
    };
