// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favourite_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavouriteNewsAdapter extends TypeAdapter<FavouriteNews> {
  @override
  final int typeId = 0;

  @override
  FavouriteNews read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavouriteNews()
      ..title = fields[0] as String?
      ..imageUrl = fields[1] as String?
      ..videoUrl = fields[2] as String?
      ..language = fields[3] as double?
      ..country = fields[4] as String?
      ..content = fields[5] as String?
      ..description = fields[6] as String?;
  }

  @override
  void write(BinaryWriter writer, FavouriteNews obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.imageUrl)
      ..writeByte(2)
      ..write(obj.videoUrl)
      ..writeByte(3)
      ..write(obj.language)
      ..writeByte(4)
      ..write(obj.country)
      ..writeByte(5)
      ..write(obj.content)
      ..writeByte(6)
      ..write(obj.description);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavouriteNewsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
