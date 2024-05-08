// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';
import 'package:amap_core_fluttify/amap_core_fluttify.dart';
import 'package:amap_search_fluttify/amap_search_fluttify.dart';
import 'package:amap_location_fluttify/amap_location_fluttify.dart';


// type check
@optionalTypeArgs
Future<bool> AmapMapFluttifyIOSIs<T>(dynamic __this__) async {
  final typeName = T.toString();
  if (RegExp(r'^(List<)?(String|int|double)(>)?|(Map<String,(String|int|double)>)$').hasMatch(typeName)) {
    return __this__ is T;
  }
  else if (T == MAOfflineCity) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAOfflineCity', {'__this__': __this__});
    return result;
  } else if (T == MAOfflineItemNationWide) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAOfflineItemNationWide', {'__this__': __this__});
    return result;
  } else if (T == MAMultiPoint) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAMultiPoint', {'__this__': __this__});
    return result;
  } else if (T == MAGroundOverlay) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAGroundOverlay', {'__this__': __this__});
    return result;
  } else if (T == MAPolygonRenderer) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAPolygonRenderer', {'__this__': __this__});
    return result;
  } else if (T == MAPinAnnotationView) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAPinAnnotationView', {'__this__': __this__});
    return result;
  } else if (T == MAHeatMapNode) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAHeatMapNode', {'__this__': __this__});
    return result;
  } else if (T == MAHeatMapGradient) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAHeatMapGradient', {'__this__': __this__});
    return result;
  } else if (T == MAHeatMapTileOverlay) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAHeatMapTileOverlay', {'__this__': __this__});
    return result;
  } else if (T == MAMapStatus) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAMapStatus', {'__this__': __this__});
    return result;
  } else if (T == MAPointAnnotation) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAPointAnnotation', {'__this__': __this__});
    return result;
  } else if (T == MACircle) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMACircle', {'__this__': __this__});
    return result;
  } else if (T == MAArcRenderer) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAArcRenderer', {'__this__': __this__});
    return result;
  } else if (T == MAAnnotation) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAAnnotation', {'__this__': __this__});
    return result;
  } else if (T == MAAnimatableAnnotation) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAAnimatableAnnotation', {'__this__': __this__});
    return result;
  } else if (T == MAOfflineMapViewController) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAOfflineMapViewController', {'__this__': __this__});
    return result;
  } else if (T == MAMapCustomStyleOptions) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAMapCustomStyleOptions', {'__this__': __this__});
    return result;
  } else if (T == MAPolygon) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAPolygon', {'__this__': __this__});
    return result;
  } else if (T == MAParticleOverlay) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAParticleOverlay', {'__this__': __this__});
    return result;
  } else if (T == MAPolyline) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAPolyline', {'__this__': __this__});
    return result;
  } else if (T == MAMultiColoredPolylineRenderer) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAMultiColoredPolylineRenderer', {'__this__': __this__});
    return result;
  } else if (T == MAAnimatedAnnotation) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAAnimatedAnnotation', {'__this__': __this__});
    return result;
  } else if (T == MAOverlay) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAOverlay', {'__this__': __this__});
    return result;
  } else if (T == MAMultiTexturePolylineRenderer) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAMultiTexturePolylineRenderer', {'__this__': __this__});
    return result;
  } else if (T == MAHeatMapVectorGridNode) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAHeatMapVectorGridNode', {'__this__': __this__});
    return result;
  } else if (T == MAHeatMapVectorGrid) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAHeatMapVectorGrid', {'__this__': __this__});
    return result;
  } else if (T == MAHeatMapVectorGridOverlayOptions) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAHeatMapVectorGridOverlayOptions', {'__this__': __this__});
    return result;
  } else if (T == MAHeatMapVectorGridOverlay) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAHeatMapVectorGridOverlay', {'__this__': __this__});
    return result;
  } else if (T == MAOfflineProvince) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAOfflineProvince', {'__this__': __this__});
    return result;
  } else if (T == MAHeatMapVectorOverlayRender) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAHeatMapVectorOverlayRender', {'__this__': __this__});
    return result;
  } else if (T == MATileOverlayRenderer) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMATileOverlayRenderer', {'__this__': __this__});
    return result;
  } else if (T == MAOfflineItem) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAOfflineItem', {'__this__': __this__});
    return result;
  } else if (T == MAGeodesicPolyline) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAGeodesicPolyline', {'__this__': __this__});
    return result;
  } else if (T == MATouchPoi) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMATouchPoi', {'__this__': __this__});
    return result;
  } else if (T == MAPathShowRange) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAPathShowRange', {'__this__': __this__});
    return result;
  } else if (T == MAMVTTileOverlayRenderer) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAMVTTileOverlayRenderer', {'__this__': __this__});
    return result;
  } else if (T == MAOfflineItemMunicipality) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAOfflineItemMunicipality', {'__this__': __this__});
    return result;
  } else if (T == MAHeatMapVectorGridOverlayRenderer) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAHeatMapVectorGridOverlayRenderer', {'__this__': __this__});
    return result;
  } else if (T == MAMultiPolyline) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAMultiPolyline', {'__this__': __this__});
    return result;
  } else if (T == MATraceDelegate) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMATraceDelegate', {'__this__': __this__});
    return result;
  } else if (T == MATraceManager) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMATraceManager', {'__this__': __this__});
    return result;
  } else if (T == MAMultiPointOverlayRendererDelegate) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAMultiPointOverlayRendererDelegate', {'__this__': __this__});
    return result;
  } else if (T == MAMultiPointOverlayRenderer) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAMultiPointOverlayRenderer', {'__this__': __this__});
    return result;
  } else if (T == MAIndoorFloorInfo) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAIndoorFloorInfo', {'__this__': __this__});
    return result;
  } else if (T == MAIndoorInfo) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAIndoorInfo', {'__this__': __this__});
    return result;
  } else if (T == MAPolylineRenderer) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAPolylineRenderer', {'__this__': __this__});
    return result;
  } else if (T == MAAnnotationMoveAnimation) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAAnnotationMoveAnimation', {'__this__': __this__});
    return result;
  } else if (T == MAShape) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAShape', {'__this__': __this__});
    return result;
  } else if (T == MAAnnotationView) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAAnnotationView', {'__this__': __this__});
    return result;
  } else if (T == MATileOverlay) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMATileOverlay', {'__this__': __this__});
    return result;
  } else if (T == MATileOverlayPath) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMATileOverlayPath', {'__this__': __this__});
    return result;
  } else if (T == MACustomCalloutView) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMACustomCalloutView', {'__this__': __this__});
    return result;
  } else if (T == MAOfflineItemCommonCity) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAOfflineItemCommonCity', {'__this__': __this__});
    return result;
  } else if (T == MAOfflineMap) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAOfflineMap', {'__this__': __this__});
    return result;
  } else if (T == MACircleRenderer) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMACircleRenderer', {'__this__': __this__});
    return result;
  } else if (T == MAParticleOverlayRenderer) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAParticleOverlayRenderer', {'__this__': __this__});
    return result;
  } else if (T == MACoordinateBounds) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMACoordinateBounds', {'__this__': __this__});
    return result;
  } else if (T == MACoordinateSpan) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMACoordinateSpan', {'__this__': __this__});
    return result;
  } else if (T == MACoordinateRegion) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMACoordinateRegion', {'__this__': __this__});
    return result;
  } else if (T == MAMapPoint) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAMapPoint', {'__this__': __this__});
    return result;
  } else if (T == MAMapSize) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAMapSize', {'__this__': __this__});
    return result;
  } else if (T == MAMapRect) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAMapRect', {'__this__': __this__});
    return result;
  } else if (T == MAParticleVelocityGenerate) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAParticleVelocityGenerate', {'__this__': __this__});
    return result;
  } else if (T == MAParticleRandomVelocityGenerate) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAParticleRandomVelocityGenerate', {'__this__': __this__});
    return result;
  } else if (T == MAParticleColorGenerate) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAParticleColorGenerate', {'__this__': __this__});
    return result;
  } else if (T == MAParticleRandomColorGenerate) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAParticleRandomColorGenerate', {'__this__': __this__});
    return result;
  } else if (T == MAParticleRotationGenerate) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAParticleRotationGenerate', {'__this__': __this__});
    return result;
  } else if (T == MAParticleConstantRotationGenerate) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAParticleConstantRotationGenerate', {'__this__': __this__});
    return result;
  } else if (T == MAParticleSizeGenerate) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAParticleSizeGenerate', {'__this__': __this__});
    return result;
  } else if (T == MAParticleCurveSizeGenerate) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAParticleCurveSizeGenerate', {'__this__': __this__});
    return result;
  } else if (T == MAParticleEmissionModuleOC) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAParticleEmissionModuleOC', {'__this__': __this__});
    return result;
  } else if (T == MAParticleShapeModule) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAParticleShapeModule', {'__this__': __this__});
    return result;
  } else if (T == MAParticleSinglePointShapeModule) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAParticleSinglePointShapeModule', {'__this__': __this__});
    return result;
  } else if (T == MAParticleRectShapeModule) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAParticleRectShapeModule', {'__this__': __this__});
    return result;
  } else if (T == MAParticleOverLifeModuleOC) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAParticleOverLifeModuleOC', {'__this__': __this__});
    return result;
  } else if (T == MAParticleOverlayOptions) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAParticleOverlayOptions', {'__this__': __this__});
    return result;
  } else if (T == MAParticleOverlayOptionsFactory) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAParticleOverlayOptionsFactory', {'__this__': __this__});
    return result;
  } else if (T == MAMVTTileOverlayOptions) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAMVTTileOverlayOptions', {'__this__': __this__});
    return result;
  } else if (T == MAMVTTileOverlay) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAMVTTileOverlay', {'__this__': __this__});
    return result;
  } else if (T == MAOverlayRenderer) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAOverlayRenderer', {'__this__': __this__});
    return result;
  } else if (T == MAUserLocation) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAUserLocation', {'__this__': __this__});
    return result;
  } else if (T == MAHeatMapVectorNode) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAHeatMapVectorNode', {'__this__': __this__});
    return result;
  } else if (T == MAHeatMapVectorItem) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAHeatMapVectorItem', {'__this__': __this__});
    return result;
  } else if (T == MAHeatMapVectorOverlayOptions) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAHeatMapVectorOverlayOptions', {'__this__': __this__});
    return result;
  } else if (T == MAHeatMapVectorOverlay) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAHeatMapVectorOverlay', {'__this__': __this__});
    return result;
  } else if (T == MAMultiPointItem) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAMultiPointItem', {'__this__': __this__});
    return result;
  } else if (T == MAMultiPointOverlay) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAMultiPointOverlay', {'__this__': __this__});
    return result;
  } else if (T == MACustomBuildingOverlayOption) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMACustomBuildingOverlayOption', {'__this__': __this__});
    return result;
  } else if (T == MACustomBuildingOverlay) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMACustomBuildingOverlay', {'__this__': __this__});
    return result;
  } else if (T == MATracePoint) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMATracePoint', {'__this__': __this__});
    return result;
  } else if (T == MATraceLocation) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMATraceLocation', {'__this__': __this__});
    return result;
  } else if (T == MAArc) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAArc', {'__this__': __this__});
    return result;
  } else if (T == MAUserLocationRepresentation) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAUserLocationRepresentation', {'__this__': __this__});
    return result;
  } else if (T == MABaseOverlay) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMABaseOverlay', {'__this__': __this__});
    return result;
  } else if (T == MAMapView) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAMapView', {'__this__': __this__});
    return result;
  } else if (T == MAMapViewDelegate) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAMapViewDelegate', {'__this__': __this__});
    return result;
  } else if (T == MAOverlayPathRenderer) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAOverlayPathRenderer', {'__this__': __this__});
    return result;
  } else if (T == MAGroundOverlayRenderer) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMAGroundOverlayRenderer', {'__this__': __this__});
    return result;
  } else if (T == MACustomBuildingOverlayRenderer) {
    final result = await kAmapMapFluttifyChannel.invokeMethod('RefClass::isKindOfMACustomBuildingOverlayRenderer', {'__this__': __this__});
    return result;
  }
  else {
    return false;
  }
}

// type cast
// 给一个可选的泛型, 如果没有指定泛型就返回dynamic
@optionalTypeArgs
T? AmapMapFluttifyIOSAs<T>(dynamic __this__) {
  final typeName = T.toString();

  if (__this__ == null) {
    return null;
  } else if (RegExp(r'^(List<)?(String|int|double)(>)?|(Map<String,(String|int|double)>)$').hasMatch(typeName)) {
    return __this__ as T;
  }
  else if (T == MAOfflineCity) {
    return (MAOfflineCity()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAOfflineItemNationWide) {
    return (MAOfflineItemNationWide()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAMultiPoint) {
    return (MAMultiPoint()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAGroundOverlay) {
    return (MAGroundOverlay()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAPolygonRenderer) {
    return (MAPolygonRenderer()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAPinAnnotationView) {
    return (MAPinAnnotationView()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAHeatMapNode) {
    return (MAHeatMapNode()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAHeatMapGradient) {
    return (MAHeatMapGradient()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAHeatMapTileOverlay) {
    return (MAHeatMapTileOverlay()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAMapStatus) {
    return (MAMapStatus()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAPointAnnotation) {
    return (MAPointAnnotation()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MACircle) {
    return (MACircle()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAArcRenderer) {
    return (MAArcRenderer()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAAnnotation) {
    return (MAAnnotation.subInstance()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAAnimatableAnnotation) {
    return (MAAnimatableAnnotation.subInstance()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAOfflineMapViewController) {
    return (MAOfflineMapViewController()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAMapCustomStyleOptions) {
    return (MAMapCustomStyleOptions()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAPolygon) {
    return (MAPolygon()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAParticleOverlay) {
    return (MAParticleOverlay()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAPolyline) {
    return (MAPolyline()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAMultiColoredPolylineRenderer) {
    return (MAMultiColoredPolylineRenderer()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAAnimatedAnnotation) {
    return (MAAnimatedAnnotation()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAOverlay) {
    return (MAOverlay.subInstance()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAMultiTexturePolylineRenderer) {
    return (MAMultiTexturePolylineRenderer()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAHeatMapVectorGridNode) {
    return (MAHeatMapVectorGridNode()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAHeatMapVectorGrid) {
    return (MAHeatMapVectorGrid()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAHeatMapVectorGridOverlayOptions) {
    return (MAHeatMapVectorGridOverlayOptions()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAHeatMapVectorGridOverlay) {
    return (MAHeatMapVectorGridOverlay()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAOfflineProvince) {
    return (MAOfflineProvince()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAHeatMapVectorOverlayRender) {
    return (MAHeatMapVectorOverlayRender()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MATileOverlayRenderer) {
    return (MATileOverlayRenderer()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAOfflineItem) {
    return (MAOfflineItem()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAGeodesicPolyline) {
    return (MAGeodesicPolyline()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MATouchPoi) {
    return (MATouchPoi()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAPathShowRange) {
    return (MAPathShowRange()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAMVTTileOverlayRenderer) {
    return (MAMVTTileOverlayRenderer()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAOfflineItemMunicipality) {
    return (MAOfflineItemMunicipality()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAHeatMapVectorGridOverlayRenderer) {
    return (MAHeatMapVectorGridOverlayRenderer()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAMultiPolyline) {
    return (MAMultiPolyline()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MATraceDelegate) {
    return (MATraceDelegate.subInstance()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MATraceManager) {
    return (MATraceManager()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAMultiPointOverlayRendererDelegate) {
    return (MAMultiPointOverlayRendererDelegate.subInstance()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAMultiPointOverlayRenderer) {
    return (MAMultiPointOverlayRenderer()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAIndoorFloorInfo) {
    return (MAIndoorFloorInfo()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAIndoorInfo) {
    return (MAIndoorInfo()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAPolylineRenderer) {
    return (MAPolylineRenderer()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAAnnotationMoveAnimation) {
    return (MAAnnotationMoveAnimation()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAShape) {
    return (MAShape()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAAnnotationView) {
    return (MAAnnotationView()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MATileOverlay) {
    return (MATileOverlay()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MATileOverlayPath) {
    return (MATileOverlayPath()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MACustomCalloutView) {
    return (MACustomCalloutView()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAOfflineItemCommonCity) {
    return (MAOfflineItemCommonCity()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAOfflineMap) {
    return (MAOfflineMap()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MACircleRenderer) {
    return (MACircleRenderer()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAParticleOverlayRenderer) {
    return (MAParticleOverlayRenderer()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MACoordinateBounds) {
    return (MACoordinateBounds()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MACoordinateSpan) {
    return (MACoordinateSpan()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MACoordinateRegion) {
    return (MACoordinateRegion()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAMapPoint) {
    return (MAMapPoint()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAMapSize) {
    return (MAMapSize()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAMapRect) {
    return (MAMapRect()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAParticleVelocityGenerate) {
    return (MAParticleVelocityGenerate.subInstance()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAParticleRandomVelocityGenerate) {
    return (MAParticleRandomVelocityGenerate()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAParticleColorGenerate) {
    return (MAParticleColorGenerate.subInstance()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAParticleRandomColorGenerate) {
    return (MAParticleRandomColorGenerate()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAParticleRotationGenerate) {
    return (MAParticleRotationGenerate.subInstance()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAParticleConstantRotationGenerate) {
    return (MAParticleConstantRotationGenerate()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAParticleSizeGenerate) {
    return (MAParticleSizeGenerate.subInstance()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAParticleCurveSizeGenerate) {
    return (MAParticleCurveSizeGenerate()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAParticleEmissionModuleOC) {
    return (MAParticleEmissionModuleOC()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAParticleShapeModule) {
    return (MAParticleShapeModule.subInstance()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAParticleSinglePointShapeModule) {
    return (MAParticleSinglePointShapeModule()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAParticleRectShapeModule) {
    return (MAParticleRectShapeModule()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAParticleOverLifeModuleOC) {
    return (MAParticleOverLifeModuleOC()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAParticleOverlayOptions) {
    return (MAParticleOverlayOptions()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAParticleOverlayOptionsFactory) {
    return (MAParticleOverlayOptionsFactory()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAMVTTileOverlayOptions) {
    return (MAMVTTileOverlayOptions()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAMVTTileOverlay) {
    return (MAMVTTileOverlay()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAOverlayRenderer) {
    return (MAOverlayRenderer()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAUserLocation) {
    return (MAUserLocation()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAHeatMapVectorNode) {
    return (MAHeatMapVectorNode()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAHeatMapVectorItem) {
    return (MAHeatMapVectorItem()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAHeatMapVectorOverlayOptions) {
    return (MAHeatMapVectorOverlayOptions()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAHeatMapVectorOverlay) {
    return (MAHeatMapVectorOverlay()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAMultiPointItem) {
    return (MAMultiPointItem()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAMultiPointOverlay) {
    return (MAMultiPointOverlay()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MACustomBuildingOverlayOption) {
    return (MACustomBuildingOverlayOption()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MACustomBuildingOverlay) {
    return (MACustomBuildingOverlay()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MATracePoint) {
    return (MATracePoint()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MATraceLocation) {
    return (MATraceLocation()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAArc) {
    return (MAArc()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAUserLocationRepresentation) {
    return (MAUserLocationRepresentation()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MABaseOverlay) {
    return (MABaseOverlay()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAMapView) {
    return (MAMapView()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAMapViewDelegate) {
    return (MAMapViewDelegate.subInstance()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAOverlayPathRenderer) {
    return (MAOverlayPathRenderer()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MAGroundOverlayRenderer) {
    return (MAGroundOverlayRenderer()..refId = (__this__ as Ref).refId) as T;
  } else if (T == MACustomBuildingOverlayRenderer) {
    return (MACustomBuildingOverlayRenderer()..refId = (__this__ as Ref).refId) as T;
  }

  final FoundationFluttifyObject = FoundationFluttifyIOSAs<T>(__this__);
  if (FoundationFluttifyObject != null) {
    return FoundationFluttifyObject;
  }
  final CoreLocationFluttifyObject = CoreLocationFluttifyIOSAs<T>(__this__);
  if (CoreLocationFluttifyObject != null) {
    return CoreLocationFluttifyObject;
  }
  final AmapCoreFluttifyObject = AmapCoreFluttifyIOSAs<T>(__this__);
  if (AmapCoreFluttifyObject != null) {
    return AmapCoreFluttifyObject;
  }
  final AmapSearchFluttifyObject = AmapSearchFluttifyIOSAs<T>(__this__);
  if (AmapSearchFluttifyObject != null) {
    return AmapSearchFluttifyObject;
  }
  final AmapLocationFluttifyObject = AmapLocationFluttifyIOSAs<T>(__this__);
  if (AmapLocationFluttifyObject != null) {
    return AmapLocationFluttifyObject;
  }

  // 匹配不到目标类型, 直接返回原对象
  debugPrint('匹配不到目标类型, 直接返回原对象');
  return __this__;
}