//
//  Generated code. Do not modify.
//  source: deviceinfo.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use platformDescriptor instead')
const Platform$json = {
  '1': 'Platform',
  '2': [
    {'1': 'JX_3085C_PLATFORM', '2': 0},
    {'1': 'JX_3085L_PLATFORM', '2': 1},
    {'1': 'JX_3085E_PLATFORM', '2': 2},
  ],
};

/// Descriptor for `Platform`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List platformDescriptor = $convert.base64Decode(
    'CghQbGF0Zm9ybRIVChFKWF8zMDg1Q19QTEFURk9STRAAEhUKEUpYXzMwODVMX1BMQVRGT1JNEA'
    'ESFQoRSlhfMzA4NUVfUExBVEZPUk0QAg==');

@$core.Deprecated('Use shapeDescriptor instead')
const Shape$json = {
  '1': 'Shape',
  '2': [
    {'1': 'SQUARE_SHAPE', '2': 0},
    {'1': 'ROUND_SHAPE', '2': 1},
  ],
};

/// Descriptor for `Shape`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List shapeDescriptor = $convert.base64Decode(
    'CgVTaGFwZRIQCgxTUVVBUkVfU0hBUEUQABIPCgtST1VORF9TSEFQRRAB');

@$core.Deprecated('Use dev_typeDescriptor instead')
const Dev_type$json = {
  '1': 'Dev_type',
  '2': [
    {'1': 'WATCH_TYPE', '2': 0},
    {'1': 'BAND_TYPE', '2': 1},
  ],
};

/// Descriptor for `Dev_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List dev_typeDescriptor = $convert.base64Decode(
    'CghEZXZfdHlwZRIOCgpXQVRDSF9UWVBFEAASDQoJQkFORF9UWVBFEAE=');

@$core.Deprecated('Use batt_modeDescriptor instead')
const Batt_mode$json = {
  '1': 'Batt_mode',
  '2': [
    {'1': 'INVALID', '2': 0},
    {'1': 'NORMAL_MODE', '2': 1},
    {'1': 'ECO_MODE', '2': 2},
  ],
};

/// Descriptor for `Batt_mode`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List batt_modeDescriptor = $convert.base64Decode(
    'CglCYXR0X21vZGUSCwoHSU5WQUxJRBAAEg8KC05PUk1BTF9NT0RFEAESDAoIRUNPX01PREUQAg'
    '==');

@$core.Deprecated('Use batt_statusDescriptor instead')
const Batt_status$json = {
  '1': 'Batt_status',
  '2': [
    {'1': 'NORMAL', '2': 0},
    {'1': 'CHARING', '2': 1},
    {'1': 'FULL', '2': 2},
    {'1': 'LOW', '2': 3},
  ],
};

/// Descriptor for `Batt_status`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List batt_statusDescriptor = $convert.base64Decode(
    'CgtCYXR0X3N0YXR1cxIKCgZOT1JNQUwQABILCgdDSEFSSU5HEAESCAoERlVMTBACEgcKA0xPVx'
    'AD');

@$core.Deprecated('Use protocol_device_batt_infoDescriptor instead')
const protocol_device_batt_info$json = {
  '1': 'protocol_device_batt_info',
  '2': [
    {'1': 'voltage', '3': 1, '4': 1, '5': 13, '10': 'voltage'},
    {'1': 'status', '3': 2, '4': 1, '5': 14, '6': '.Batt_status', '10': 'status'},
    {'1': 'batt_level', '3': 3, '4': 1, '5': 13, '10': 'battLevel'},
    {'1': 'last_charging_year', '3': 4, '4': 1, '5': 13, '10': 'lastChargingYear'},
    {'1': 'last_charging_month', '3': 5, '4': 1, '5': 13, '10': 'lastChargingMonth'},
    {'1': 'last_charging_day', '3': 6, '4': 1, '5': 13, '10': 'lastChargingDay'},
    {'1': 'last_charging_hour', '3': 7, '4': 1, '5': 13, '10': 'lastChargingHour'},
    {'1': 'last_charging_minute', '3': 8, '4': 1, '5': 13, '10': 'lastChargingMinute'},
    {'1': 'last_charging_second', '3': 9, '4': 1, '5': 13, '10': 'lastChargingSecond'},
    {'1': 'mode', '3': 10, '4': 1, '5': 14, '6': '.Batt_mode', '10': 'mode'},
  ],
};

/// Descriptor for `protocol_device_batt_info`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_device_batt_infoDescriptor = $convert.base64Decode(
    'Chlwcm90b2NvbF9kZXZpY2VfYmF0dF9pbmZvEhgKB3ZvbHRhZ2UYASABKA1SB3ZvbHRhZ2USJA'
    'oGc3RhdHVzGAIgASgOMgwuQmF0dF9zdGF0dXNSBnN0YXR1cxIdCgpiYXR0X2xldmVsGAMgASgN'
    'UgliYXR0TGV2ZWwSLAoSbGFzdF9jaGFyZ2luZ195ZWFyGAQgASgNUhBsYXN0Q2hhcmdpbmdZZW'
    'FyEi4KE2xhc3RfY2hhcmdpbmdfbW9udGgYBSABKA1SEWxhc3RDaGFyZ2luZ01vbnRoEioKEWxh'
    'c3RfY2hhcmdpbmdfZGF5GAYgASgNUg9sYXN0Q2hhcmdpbmdEYXkSLAoSbGFzdF9jaGFyZ2luZ1'
    '9ob3VyGAcgASgNUhBsYXN0Q2hhcmdpbmdIb3VyEjAKFGxhc3RfY2hhcmdpbmdfbWludXRlGAgg'
    'ASgNUhJsYXN0Q2hhcmdpbmdNaW51dGUSMAoUbGFzdF9jaGFyZ2luZ19zZWNvbmQYCSABKA1SEm'
    'xhc3RDaGFyZ2luZ1NlY29uZBIeCgRtb2RlGAogASgOMgouQmF0dF9tb2RlUgRtb2Rl');

@$core.Deprecated('Use protocol_bt_nameDescriptor instead')
const protocol_bt_name$json = {
  '1': 'protocol_bt_name',
  '2': [
    {'1': 'is_support', '3': 1, '4': 1, '5': 8, '10': 'isSupport'},
    {'1': 'bt_name', '3': 2, '4': 1, '5': 12, '10': 'btName'},
  ],
};

/// Descriptor for `protocol_bt_name`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_bt_nameDescriptor = $convert.base64Decode(
    'ChBwcm90b2NvbF9idF9uYW1lEh0KCmlzX3N1cHBvcnQYASABKAhSCWlzU3VwcG9ydBIXCgdidF'
    '9uYW1lGAIgASgMUgZidE5hbWU=');

@$core.Deprecated('Use device_size_infoDescriptor instead')
const device_size_info$json = {
  '1': 'device_size_info',
  '2': [
    {'1': 'width', '3': 1, '4': 1, '5': 13, '10': 'width'},
    {'1': 'height', '3': 2, '4': 1, '5': 13, '10': 'height'},
    {'1': 'angle', '3': 3, '4': 1, '5': 13, '10': 'angle'},
  ],
};

/// Descriptor for `device_size_info`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List device_size_infoDescriptor = $convert.base64Decode(
    'ChBkZXZpY2Vfc2l6ZV9pbmZvEhQKBXdpZHRoGAEgASgNUgV3aWR0aBIWCgZoZWlnaHQYAiABKA'
    '1SBmhlaWdodBIUCgVhbmdsZRgDIAEoDVIFYW5nbGU=');

@$core.Deprecated('Use hardware_supportDescriptor instead')
const hardware_support$json = {
  '1': 'hardware_support',
  '2': [
    {'1': 'heartrate_hardware', '3': 1, '4': 1, '5': 8, '10': 'heartrateHardware'},
    {'1': 'acc_hardware', '3': 2, '4': 1, '5': 8, '10': 'accHardware'},
    {'1': 'gyro_hardware', '3': 3, '4': 1, '5': 8, '10': 'gyroHardware'},
    {'1': 'button_hardware', '3': 4, '4': 1, '5': 8, '10': 'buttonHardware'},
    {'1': 'lcd_hardware', '3': 5, '4': 1, '5': 8, '10': 'lcdHardware'},
    {'1': 'tp_hardware', '3': 6, '4': 1, '5': 8, '10': 'tpHardware'},
    {'1': 'motor_hardware', '3': 7, '4': 1, '5': 8, '10': 'motorHardware'},
    {'1': 'mic_hardware', '3': 8, '4': 1, '5': 8, '10': 'micHardware'},
    {'1': 'speak_hardware', '3': 9, '4': 1, '5': 8, '10': 'speakHardware'},
    {'1': 'gps_hardware', '3': 10, '4': 1, '5': 8, '10': 'gpsHardware'},
    {'1': 'norflash_hardware', '3': 11, '4': 1, '5': 8, '10': 'norflashHardware'},
    {'1': 'nandflash_hardware', '3': 12, '4': 1, '5': 8, '10': 'nandflashHardware'},
  ],
};

/// Descriptor for `hardware_support`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hardware_supportDescriptor = $convert.base64Decode(
    'ChBoYXJkd2FyZV9zdXBwb3J0Ei0KEmhlYXJ0cmF0ZV9oYXJkd2FyZRgBIAEoCFIRaGVhcnRyYX'
    'RlSGFyZHdhcmUSIQoMYWNjX2hhcmR3YXJlGAIgASgIUgthY2NIYXJkd2FyZRIjCg1neXJvX2hh'
    'cmR3YXJlGAMgASgIUgxneXJvSGFyZHdhcmUSJwoPYnV0dG9uX2hhcmR3YXJlGAQgASgIUg5idX'
    'R0b25IYXJkd2FyZRIhCgxsY2RfaGFyZHdhcmUYBSABKAhSC2xjZEhhcmR3YXJlEh8KC3RwX2hh'
    'cmR3YXJlGAYgASgIUgp0cEhhcmR3YXJlEiUKDm1vdG9yX2hhcmR3YXJlGAcgASgIUg1tb3Rvck'
    'hhcmR3YXJlEiEKDG1pY19oYXJkd2FyZRgIIAEoCFILbWljSGFyZHdhcmUSJQoOc3BlYWtfaGFy'
    'ZHdhcmUYCSABKAhSDXNwZWFrSGFyZHdhcmUSIQoMZ3BzX2hhcmR3YXJlGAogASgIUgtncHNIYX'
    'Jkd2FyZRIrChFub3JmbGFzaF9oYXJkd2FyZRgLIAEoCFIQbm9yZmxhc2hIYXJkd2FyZRItChJu'
    'YW5kZmxhc2hfaGFyZHdhcmUYDCABKAhSEW5hbmRmbGFzaEhhcmR3YXJl');

@$core.Deprecated('Use device_sn_infoDescriptor instead')
const device_sn_info$json = {
  '1': 'device_sn_info',
  '2': [
    {'1': 'product_id', '3': 1, '4': 1, '5': 13, '10': 'productId'},
    {'1': 'factory_id', '3': 2, '4': 1, '5': 13, '10': 'factoryId'},
    {'1': 'customer_id', '3': 3, '4': 1, '5': 13, '10': 'customerId'},
    {'1': 'production_date', '3': 4, '4': 1, '5': 13, '10': 'productionDate'},
    {'1': 'batch_num', '3': 5, '4': 1, '5': 13, '10': 'batchNum'},
    {'1': 'serial_num', '3': 6, '4': 1, '5': 13, '10': 'serialNum'},
    {'1': 'color_code', '3': 7, '4': 1, '5': 13, '10': 'colorCode'},
  ],
};

/// Descriptor for `device_sn_info`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List device_sn_infoDescriptor = $convert.base64Decode(
    'Cg5kZXZpY2Vfc25faW5mbxIdCgpwcm9kdWN0X2lkGAEgASgNUglwcm9kdWN0SWQSHQoKZmFjdG'
    '9yeV9pZBgCIAEoDVIJZmFjdG9yeUlkEh8KC2N1c3RvbWVyX2lkGAMgASgNUgpjdXN0b21lcklk'
    'EicKD3Byb2R1Y3Rpb25fZGF0ZRgEIAEoDVIOcHJvZHVjdGlvbkRhdGUSGwoJYmF0Y2hfbnVtGA'
    'UgASgNUghiYXRjaE51bRIdCgpzZXJpYWxfbnVtGAYgASgNUglzZXJpYWxOdW0SHQoKY29sb3Jf'
    'Y29kZRgHIAEoDVIJY29sb3JDb2Rl');

@$core.Deprecated('Use device_voice_assistantDescriptor instead')
const device_voice_assistant$json = {
  '1': 'device_voice_assistant',
  '2': [
    {'1': 'fw_major_version', '3': 1, '4': 1, '5': 13, '10': 'fwMajorVersion'},
    {'1': 'fw_minor_version', '3': 2, '4': 1, '5': 13, '10': 'fwMinorVersion'},
    {'1': 'fw_type', '3': 3, '4': 1, '5': 13, '10': 'fwType'},
    {'1': 'nw_major_version', '3': 4, '4': 1, '5': 13, '10': 'nwMajorVersion'},
    {'1': 'nw_minorr_version', '3': 5, '4': 1, '5': 13, '10': 'nwMinorrVersion'},
    {'1': 'nw_type', '3': 6, '4': 1, '5': 13, '10': 'nwType'},
    {'1': 'current_language', '3': 7, '4': 1, '5': 13, '10': 'currentLanguage'},
    {'1': 'switch_language', '3': 8, '4': 1, '5': 13, '10': 'switchLanguage'},
  ],
};

/// Descriptor for `device_voice_assistant`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List device_voice_assistantDescriptor = $convert.base64Decode(
    'ChZkZXZpY2Vfdm9pY2VfYXNzaXN0YW50EigKEGZ3X21ham9yX3ZlcnNpb24YASABKA1SDmZ3TW'
    'Fqb3JWZXJzaW9uEigKEGZ3X21pbm9yX3ZlcnNpb24YAiABKA1SDmZ3TWlub3JWZXJzaW9uEhcK'
    'B2Z3X3R5cGUYAyABKA1SBmZ3VHlwZRIoChBud19tYWpvcl92ZXJzaW9uGAQgASgNUg5ud01ham'
    '9yVmVyc2lvbhIqChFud19taW5vcnJfdmVyc2lvbhgFIAEoDVIPbndNaW5vcnJWZXJzaW9uEhcK'
    'B253X3R5cGUYBiABKA1SBm53VHlwZRIpChBjdXJyZW50X2xhbmd1YWdlGAcgASgNUg9jdXJyZW'
    '50TGFuZ3VhZ2USJwoPc3dpdGNoX2xhbmd1YWdlGAggASgNUg5zd2l0Y2hMYW5ndWFnZQ==');

@$core.Deprecated('Use protocol_device_infoDescriptor instead')
const protocol_device_info$json = {
  '1': 'protocol_device_info',
  '2': [
    {'1': 'device_id', '3': 1, '4': 1, '5': 13, '10': 'deviceId'},
    {'1': 'major_version', '3': 2, '4': 1, '5': 13, '10': 'majorVersion'},
    {'1': 'minor_version', '3': 3, '4': 1, '5': 13, '10': 'minorVersion'},
    {'1': 'micro_version', '3': 4, '4': 1, '5': 13, '10': 'microVersion'},
    {'1': 'pair_flag', '3': 5, '4': 1, '5': 13, '10': 'pairFlag'},
    {'1': 'platform', '3': 6, '4': 1, '5': 14, '6': '.Platform', '10': 'platform'},
    {'1': 'shape', '3': 7, '4': 1, '5': 14, '6': '.Shape', '10': 'shape'},
    {'1': 'dev_type', '3': 8, '4': 1, '5': 14, '6': '.Dev_type', '10': 'devType'},
    {'1': 'mac_addr', '3': 9, '4': 1, '5': 12, '10': 'macAddr'},
    {'1': 'bt_addr', '3': 10, '4': 1, '5': 12, '10': 'btAddr'},
    {'1': 'batt_info', '3': 11, '4': 1, '5': 11, '6': '.protocol_device_batt_info', '10': 'battInfo'},
    {'1': 'bt_name', '3': 12, '4': 1, '5': 11, '6': '.protocol_bt_name', '10': 'btName'},
    {'1': 'font_major_version', '3': 13, '4': 1, '5': 13, '10': 'fontMajorVersion'},
    {'1': 'font_minor_version', '3': 14, '4': 1, '5': 13, '10': 'fontMinorVersion'},
    {'1': 'font_micro_version', '3': 15, '4': 1, '5': 13, '10': 'fontMicroVersion'},
    {'1': 'reboot_flag', '3': 16, '4': 1, '5': 13, '10': 'rebootFlag'},
    {'1': 'hw_support', '3': 17, '4': 1, '5': 11, '6': '.hardware_support', '10': 'hwSupport'},
    {'1': 'gps_soc_name', '3': 18, '4': 1, '5': 9, '10': 'gpsSocName'},
    {'1': 'size_info', '3': 19, '4': 1, '5': 11, '6': '.device_size_info', '10': 'sizeInfo'},
    {'1': 'is_recovery_mode', '3': 20, '4': 1, '5': 8, '10': 'isRecoveryMode'},
    {'1': 'device_color', '3': 21, '4': 1, '5': 13, '10': 'deviceColor'},
    {'1': 'plate_photo_pic_support_num', '3': 22, '4': 1, '5': 13, '10': 'platePhotoPicSupportNum'},
    {'1': 'sn_info', '3': 23, '4': 1, '5': 11, '6': '.device_sn_info', '10': 'snInfo'},
    {'1': 'voice_assistant', '3': 24, '4': 1, '5': 11, '6': '.device_voice_assistant', '10': 'voiceAssistant'},
    {'1': 'heartrate_push', '3': 25, '4': 1, '5': 8, '10': 'heartratePush'},
  ],
};

/// Descriptor for `protocol_device_info`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_device_infoDescriptor = $convert.base64Decode(
    'ChRwcm90b2NvbF9kZXZpY2VfaW5mbxIbCglkZXZpY2VfaWQYASABKA1SCGRldmljZUlkEiMKDW'
    '1ham9yX3ZlcnNpb24YAiABKA1SDG1ham9yVmVyc2lvbhIjCg1taW5vcl92ZXJzaW9uGAMgASgN'
    'UgxtaW5vclZlcnNpb24SIwoNbWljcm9fdmVyc2lvbhgEIAEoDVIMbWljcm9WZXJzaW9uEhsKCX'
    'BhaXJfZmxhZxgFIAEoDVIIcGFpckZsYWcSJQoIcGxhdGZvcm0YBiABKA4yCS5QbGF0Zm9ybVII'
    'cGxhdGZvcm0SHAoFc2hhcGUYByABKA4yBi5TaGFwZVIFc2hhcGUSJAoIZGV2X3R5cGUYCCABKA'
    '4yCS5EZXZfdHlwZVIHZGV2VHlwZRIZCghtYWNfYWRkchgJIAEoDFIHbWFjQWRkchIXCgdidF9h'
    'ZGRyGAogASgMUgZidEFkZHISNwoJYmF0dF9pbmZvGAsgASgLMhoucHJvdG9jb2xfZGV2aWNlX2'
    'JhdHRfaW5mb1IIYmF0dEluZm8SKgoHYnRfbmFtZRgMIAEoCzIRLnByb3RvY29sX2J0X25hbWVS'
    'BmJ0TmFtZRIsChJmb250X21ham9yX3ZlcnNpb24YDSABKA1SEGZvbnRNYWpvclZlcnNpb24SLA'
    'oSZm9udF9taW5vcl92ZXJzaW9uGA4gASgNUhBmb250TWlub3JWZXJzaW9uEiwKEmZvbnRfbWlj'
    'cm9fdmVyc2lvbhgPIAEoDVIQZm9udE1pY3JvVmVyc2lvbhIfCgtyZWJvb3RfZmxhZxgQIAEoDV'
    'IKcmVib290RmxhZxIwCgpod19zdXBwb3J0GBEgASgLMhEuaGFyZHdhcmVfc3VwcG9ydFIJaHdT'
    'dXBwb3J0EiAKDGdwc19zb2NfbmFtZRgSIAEoCVIKZ3BzU29jTmFtZRIuCglzaXplX2luZm8YEy'
    'ABKAsyES5kZXZpY2Vfc2l6ZV9pbmZvUghzaXplSW5mbxIoChBpc19yZWNvdmVyeV9tb2RlGBQg'
    'ASgIUg5pc1JlY292ZXJ5TW9kZRIhCgxkZXZpY2VfY29sb3IYFSABKA1SC2RldmljZUNvbG9yEj'
    'wKG3BsYXRlX3Bob3RvX3BpY19zdXBwb3J0X251bRgWIAEoDVIXcGxhdGVQaG90b1BpY1N1cHBv'
    'cnROdW0SKAoHc25faW5mbxgXIAEoCzIPLmRldmljZV9zbl9pbmZvUgZzbkluZm8SQAoPdm9pY2'
    'VfYXNzaXN0YW50GBggASgLMhcuZGV2aWNlX3ZvaWNlX2Fzc2lzdGFudFIOdm9pY2VBc3Npc3Rh'
    'bnQSJQoOaGVhcnRyYXRlX3B1c2gYGSABKAhSDWhlYXJ0cmF0ZVB1c2g=');

