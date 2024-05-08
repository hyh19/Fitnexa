import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:lz4/extensions.dart';

import 'lz4_bindings_generated.dart';

import 'package:ffi/ffi.dart';

String get version => _bindings.LZ4_versionNumber().toString();

int compressBound(int inputSize) => _bindings.LZ4_compressBound(inputSize);

Uint8List defaultCompress(Uint8List bytes) {
  Pointer<Uint8> src = bytes.toPointerUint8;
  int dstCapacity = compressBound(bytes.length);
  Pointer<Uint8> dst = calloc<Uint8>(dstCapacity);
  final compressedSize = _bindings.LZ4_compress_default(
      src as Pointer<Char>, dst as Pointer<Char>, bytes.length, dstCapacity);
  Uint8List compressedData = dst.asTypedList(compressedSize);
  return compressedData;
}

const String _libName = 'lz4';

/// The dynamic library in which the symbols for [Lz4Bindings] can be found.
final DynamicLibrary _dylib = () {
  if (Platform.isMacOS || Platform.isIOS) {
    return DynamicLibrary.open('$_libName.framework/$_libName');
  }
  if (Platform.isAndroid || Platform.isLinux) {
    return DynamicLibrary.open('lib$_libName.so');
  }
  if (Platform.isWindows) {
    return DynamicLibrary.open('$_libName.dll');
  }
  throw UnsupportedError('Unknown platform: ${Platform.operatingSystem}');
}();

/// The bindings to the native functions in [_dylib].
final Lz4Bindings _bindings = Lz4Bindings(_dylib);
