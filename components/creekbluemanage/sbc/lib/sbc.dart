

import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';
import 'package:ffi/ffi.dart';


import 'sbc_bindings_generated.dart';




/// A longer lived native function, which occupies the thread calling it.
///
/// Do not call these kind of native functions in the main isolate. They will
/// block Dart execution. This will cause dropped frames in Flutter applications.
/// Instead, call these native functions on a separate isolate.
///
/// Modify this to suit your own use case. Example use cases:
///
/// 1. Reuse a single isolate for various different kinds of requests.
/// 2. Use multiple helper isolates for parallel execution.
///
///
///
///



import 'package:sbc/sbc.dart';


Uint8List pcmToSbc(Uint8List bytes) {

  final inputLen = bytes.length;
  final blob = calloc<Uint8>(bytes.length);
  final blobBytes = blob.asTypedList(bytes.length);
  blobBytes.setAll(0, bytes);
  final outputLen = inputLen; // 假设输出长度等于输入长度
  final written = calloc<Size>(1);
  Pointer<Uint8> blob2 = calloc<Uint8>(512);
  final result =  _bindings.my_decoder_decode(blob as Pointer<Char>, inputLen, blob2 as Pointer<Char>, 512, written);
  Uint8List compressedData = blob2.asTypedList(written.value);
  return compressedData;

}


pcmInit(){
  _bindings.my_sbc_init();
}

Uint8List sbcToPcm(Uint8List bytes) {

  final inputLen = bytes.length;
  final blob = calloc<Uint8>(bytes.length);
  final blobBytes = blob.asTypedList(bytes.length);
  blobBytes.setAll(0, bytes);
  final outputLen = inputLen; // 假设输出长度等于输入长度
  final written = calloc<Int>(1);
  Pointer<Uint8> blob2 = calloc<Uint8>(512);
  final result =  _bindings.my_encoder_encode(blob as Pointer<Char>, inputLen, blob2 as Pointer<Char>, 512, written);
  Uint8List compressedData = blob2.asTypedList(written.value);
  return compressedData;

}



const String _libName = 'sbc';


/// The dynamic library in which the symbols for [SbcBindings] can be found.
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
final SbcBindings _bindings = SbcBindings(_dylib);



