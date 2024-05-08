import 'dart:convert';
import 'dart:typed_data';

import 'package:collection/collection.dart';

class CreekByteArray extends Iterable<int> {
  CreekByteArray(Iterable<int> data)
      : assert(
          data.every((e) => e < 256),
          'All elements should be less than 256',
        ),
        _data = data.toList();

  const CreekByteArray._(this._data);

  const CreekByteArray.empty() : this._(const []);

  CreekByteArray._fromByteData(ByteData data) : _data = data.buffer.asUint8List();

  factory CreekByteArray.merge(Iterable<CreekByteArray> arrays) {
    final list = Uint8List.fromList(arrays.expand((e) => e).toList());

    return CreekByteArray(list);
  }

  factory CreekByteArray.fromString(String string) => CreekByteArray.merge([
    CreekByteArray.u64(string.length),
    CreekByteArray(utf8.encode(string)),
      ]);

  factory CreekByteArray.char(String string, {int length = 1}) {
    final encode = utf8.encode(string);
    final byteData = ByteData(length);
    final encodeLength = encode.length > length ? length : encode.length;
    for (int i = 0; i < encodeLength; i++) {
      byteData.setInt8(i, encode[i]);
    }
    return CreekByteArray._fromByteData(byteData);
  }

  factory CreekByteArray.bool(bool value) =>
      CreekByteArray._fromByteData(ByteData(1)..setUint8(0, value ? 1 : 0));

  factory CreekByteArray.i8(int value) =>
      CreekByteArray._fromByteData(ByteData(1)..setUint8(0, value));

  factory CreekByteArray.u8(int value) =>
      CreekByteArray._fromByteData(ByteData(1)..setUint8(0, value));

  factory CreekByteArray.i16(int value) =>
      CreekByteArray._fromByteData(ByteData(2)..setUint16(0, value, Endian.little));

  factory CreekByteArray.u16(int value) =>
      CreekByteArray._fromByteData(ByteData(2)..setUint16(0, value, Endian.little));

  factory CreekByteArray.i32(int value) =>
      CreekByteArray._fromByteData(ByteData(4)..setUint32(0, value, Endian.little));

  factory CreekByteArray.u32(int value) =>
      CreekByteArray._fromByteData(ByteData(4)..setUint32(0, value, Endian.little));

  factory CreekByteArray.i64(int value) => _encodeBigInt(BigInt.from(value), 8);

  factory CreekByteArray.u64(int value) =>
      _encodeBigIntAsUnsigned(BigInt.from(value), 8);

  final List<int> _data;

  @override
  Iterator<int> get iterator => _data.iterator;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CreekByteArray &&
          const ListEquality<int>().equals(_data, other._data));

  @override
  int get hashCode => const ListEquality<int>().hash(_data);
}

CreekByteArray _encodeBigInt(BigInt number, int s) {
  if (number == BigInt.zero) {
    return CreekByteArray(List.filled(s, 0));
  }

  final result = Uint8List(s);
  for (var i = 0; i < s; i++) {
    result[i] = (number & _byteMask).toInt();
    number = number >> 8;
  }

  return CreekByteArray(result);
}

CreekByteArray _encodeBigIntAsUnsigned(BigInt number, int s) {
  if (number == BigInt.zero) {
    return CreekByteArray(List.filled(s, 0));
  }

  final result = Uint8List(s);
  for (var i = 0; i < s; i++) {
    result[i] = (number & _byteMask).toInt();
    number = number >> 8;
  }

  return CreekByteArray(result);
}

final _byteMask = BigInt.from(0xff);
