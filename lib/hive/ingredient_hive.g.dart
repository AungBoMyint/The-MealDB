// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IngredientHiveAdapter extends TypeAdapter<IngredientHive> {
  @override
  final int typeId = 1;

  @override
  IngredientHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return IngredientHive(
      name: fields[1] as String,
      ingredientImage: fields[2] as Uint8List,
    );
  }

  @override
  void write(BinaryWriter writer, IngredientHive obj) {
    writer
      ..writeByte(2)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.ingredientImage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IngredientHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
