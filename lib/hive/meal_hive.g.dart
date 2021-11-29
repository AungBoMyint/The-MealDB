// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meal_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MealHiveAdapter extends TypeAdapter<MealHive> {
  @override
  final int typeId = 2;

  @override
  MealHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MealHive(
      name: fields[1] as String,
      category: fields[2] as String,
      area: fields[3] as String,
      instructions: fields[4] as String,
      image: fields[5] as Uint8List?,
      ingredientHiveList: (fields[6] as List?)?.cast<IngredientHive>(),
      progressValue: fields[7] as double,
      id: fields[8] as int,
    );
  }

  @override
  void write(BinaryWriter writer, MealHive obj) {
    writer
      ..writeByte(8)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.category)
      ..writeByte(3)
      ..write(obj.area)
      ..writeByte(4)
      ..write(obj.instructions)
      ..writeByte(5)
      ..write(obj.image)
      ..writeByte(6)
      ..write(obj.ingredientHiveList)
      ..writeByte(7)
      ..write(obj.progressValue)
      ..writeByte(8)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MealHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
