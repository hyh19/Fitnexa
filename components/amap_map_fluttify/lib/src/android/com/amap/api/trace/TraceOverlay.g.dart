// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';
import 'package:amap_core_fluttify/amap_core_fluttify.dart';
import 'package:amap_search_fluttify/amap_search_fluttify.dart';
import 'package:amap_location_fluttify/amap_location_fluttify.dart';

class com_amap_api_trace_TraceOverlay extends java_lang_Object  {
  //region constants
  static const String name__ = 'com.amap.api.trace.TraceOverlay';

  @override
  final String tag__ = 'amap_map_fluttify';

  static final int TRACE_STATUS_PROCESSING = 1;
  static final int TRACE_STATUS_FINISH = 2;
  static final int TRACE_STATUS_FAILURE = 3;
  static final int TRACE_STATUS_PREPARE = 4;
  //endregion

  //region creators
  static Future<com_amap_api_trace_TraceOverlay> create__com_amap_api_maps_AMap__List_java_util_List_com_amap_api_maps_model_LatLng__(com_amap_api_maps_AMap? var1, List<com_amap_api_maps_model_LatLng>? var2) async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_amap_api_trace_TraceOverlay__com_amap_api_maps_AMap__java_util_List_com_amap_api_maps_model_LatLng_',
      {"var1": var1, "var2": var2}
    );
    return AmapMapFluttifyAndroidAs<com_amap_api_trace_TraceOverlay>(__result__)!;
  }
  
  static Future<com_amap_api_trace_TraceOverlay> create__com_amap_api_maps_AMap(com_amap_api_maps_AMap? var1) async {
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod(
      'ObjectFactory::createcom_amap_api_trace_TraceOverlay__com_amap_api_maps_AMap',
      {"var1": var1}
    );
    return AmapMapFluttifyAndroidAs<com_amap_api_trace_TraceOverlay>(__result__)!;
  }
  
  static Future<List<com_amap_api_trace_TraceOverlay>> create_batch__com_amap_api_maps_AMap__List_java_util_List_com_amap_api_maps_model_LatLng__(List<com_amap_api_maps_AMap?> var1, List<List<com_amap_api_maps_model_LatLng>?> var2) async {
    assert(var1.length == var2.length);
    final __result_batch__ = await  kAmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_amap_api_trace_TraceOverlay__com_amap_api_maps_AMap__java_util_List_com_amap_api_maps_model_LatLng_',
      [for (int __i__ = 0; __i__ < var1.length; __i__++) {"var1": var1[__i__], "var2": var2[__i__]}]
    );
    return __result_batch__
        ?.map((it) => AmapMapFluttifyAndroidAs<com_amap_api_trace_TraceOverlay>(it))
        .where((element) => element !=null)
        .cast<com_amap_api_trace_TraceOverlay>()
        .toList() ?? <com_amap_api_trace_TraceOverlay>[];
  }
  
  static Future<List<com_amap_api_trace_TraceOverlay>> create_batch__com_amap_api_maps_AMap(List<com_amap_api_maps_AMap?> var1) async {
    assert(true);
    final __result_batch__ = await  kAmapMapFluttifyChannel.invokeListMethod(
      'ObjectFactory::create_batchcom_amap_api_trace_TraceOverlay__com_amap_api_maps_AMap',
      [for (int __i__ = 0; __i__ < var1.length; __i__++) {"var1": var1[__i__]}]
    );
    return __result_batch__
        ?.map((it) => AmapMapFluttifyAndroidAs<com_amap_api_trace_TraceOverlay>(it))
        .where((element) => element !=null)
        .cast<com_amap_api_trace_TraceOverlay>()
        .toList() ?? <com_amap_api_trace_TraceOverlay>[];
  }
  
  //endregion

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<void> add(List<com_amap_api_maps_model_LatLng>? var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.trace.TraceOverlay@$refId::add([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.trace.TraceOverlay::add', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> remove() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.trace.TraceOverlay@$refId::remove([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.trace.TraceOverlay::remove', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setProperCamera(List<com_amap_api_maps_model_LatLng>? var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.trace.TraceOverlay@$refId::setProperCamera([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.trace.TraceOverlay::setProperCamera', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> zoopToSpan() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.trace.TraceOverlay@$refId::zoopToSpan([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.trace.TraceOverlay::zoopToSpan', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<int?> getTraceStatus() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.trace.TraceOverlay@$refId::getTraceStatus([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.trace.TraceOverlay::getTraceStatus', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setTraceStatus(int? var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.trace.TraceOverlay@$refId::setTraceStatus([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.trace.TraceOverlay::setTraceStatus', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<int?> getDistance() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.trace.TraceOverlay@$refId::getDistance([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.trace.TraceOverlay::getDistance', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setDistance(int? var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.trace.TraceOverlay@$refId::setDistance([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.trace.TraceOverlay::setDistance', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<int?> getWaitTime() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.trace.TraceOverlay@$refId::getWaitTime([])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.trace.TraceOverlay::getWaitTime', {"__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  
  Future<void> setWaitTime(int? var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.amap.api.trace.TraceOverlay@$refId::setWaitTime([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.trace.TraceOverlay::setWaitTime', {"var1": var1, "__this__": this});
  
  
    // handle native call
  
  
    return __result__;
  }
  
  //endregion

  @override
  String toString() {
    return 'com_amap_api_trace_TraceOverlay{refId: $refId, runtimeType: $runtimeType, tag__: $tag__}';
  }
}

extension com_amap_api_trace_TraceOverlay_Batch on List<com_amap_api_trace_TraceOverlay?> {
  String? get refId {
    if (isEmpty) return null;
    return first?.refId;
  }

  //region getters
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  Future<List<void>> add_batch(List<List<com_amap_api_maps_model_LatLng>?> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.trace.TraceOverlay::add_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> remove_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.trace.TraceOverlay::remove_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> setProperCamera_batch(List<List<com_amap_api_maps_model_LatLng>?> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.trace.TraceOverlay::setProperCamera_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<void>> zoopToSpan_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.trace.TraceOverlay::zoopToSpan_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<int?>> getTraceStatus_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.trace.TraceOverlay::getTraceStatus_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<int?>().toList();
  }
  
  
  Future<List<void>> setTraceStatus_batch(List<int?> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.trace.TraceOverlay::setTraceStatus_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<int?>> getDistance_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.trace.TraceOverlay::getDistance_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<int?>().toList();
  }
  
  
  Future<List<void>> setDistance_batch(List<int?> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.trace.TraceOverlay::setDistance_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  
  Future<List<int?>> getWaitTime_batch() async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.trace.TraceOverlay::getWaitTime_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<int?>().toList();
  }
  
  
  Future<List<void>> setWaitTime_batch(List<int?> var1) async {
    assert(true);
  
    // invoke native method
    final resultBatch = await kAmapMapFluttifyChannel.invokeMethod('com.amap.api.trace.TraceOverlay::setWaitTime_batch', [for (int __i__ = 0; __i__ < this.length; __i__++) {"var1": var1[__i__], "__this__": this[__i__]}]);
  
  
    return (resultBatch as List).map((__result__) => __result__).cast<void>().toList();
  }
  
  //endregion
}