// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'history_data.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HistoryDataAdapter extends TypeAdapter<HistoryData> {
  @override
  final int typeId = 1;

  @override
  HistoryData read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HistoryData(
      text: fields[0] as String,
      date: fields[1] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, HistoryData obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.text)
      ..writeByte(1)
      ..write(obj.date);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HistoryDataAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
