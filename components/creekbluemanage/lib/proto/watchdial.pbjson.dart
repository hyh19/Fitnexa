///
//  Generated code. Do not modify.
//  source: watchdial.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use dial_typeDescriptor instead')
const dial_type$json = const {
  '1': 'dial_type',
  '2': const [
    const {'1': 'DIAL_TYPE_NULL', '2': 0},
    const {'1': 'DIAL_TYPE_GENERAL', '2': 1},
    const {'1': 'DIAL_TYPE_PHOTO', '2': 2},
    const {'1': 'DIAL_TYPE_WALLPAPER', '2': 3},
    const {'1': 'DIAL_TYPE_CUSTOM', '2': 4},
    const {'1': 'DIAL_TYPE_GENERAL_AOD', '2': 5},
    const {'1': 'DIAL_TYPE_AOD', '2': 6},
  ],
};

/// Descriptor for `dial_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List dial_typeDescriptor = $convert.base64Decode('CglkaWFsX3R5cGUSEgoORElBTF9UWVBFX05VTEwQABIVChFESUFMX1RZUEVfR0VORVJBTBABEhMKD0RJQUxfVFlQRV9QSE9UTxACEhcKE0RJQUxfVFlQRV9XQUxMUEFQRVIQAxIUChBESUFMX1RZUEVfQ1VTVE9NEAQSGQoVRElBTF9UWVBFX0dFTkVSQUxfQU9EEAUSEQoNRElBTF9UWVBFX0FPRBAG');
@$core.Deprecated('Use dial_operate_typeDescriptor instead')
const dial_operate_type$json = const {
  '1': 'dial_operate_type',
  '2': const [
    const {'1': 'DIAL_OPERATE_TYPE_INQUIRE', '2': 0},
    const {'1': 'DIAL_OPERATE_TYPE_SET', '2': 1},
    const {'1': 'DIAL_OPERATE_TYPE_DELETE', '2': 2},
  ],
};

/// Descriptor for `dial_operate_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List dial_operate_typeDescriptor = $convert.base64Decode('ChFkaWFsX29wZXJhdGVfdHlwZRIdChlESUFMX09QRVJBVEVfVFlQRV9JTlFVSVJFEAASGQoVRElBTF9PUEVSQVRFX1RZUEVfU0VUEAESHAoYRElBTF9PUEVSQVRFX1RZUEVfREVMRVRFEAI=');
@$core.Deprecated('Use protocol_watch_dial_plate_list_itemDescriptor instead')
const protocol_watch_dial_plate_list_item$json = const {
  '1': 'protocol_watch_dial_plate_list_item',
  '2': const [
    const {'1': 'dial_type', '3': 1, '4': 1, '5': 14, '6': '.dial_type', '10': 'dialType'},
    const {'1': 'version', '3': 2, '4': 1, '5': 13, '10': 'version'},
    const {'1': 'dial_size', '3': 3, '4': 1, '5': 13, '10': 'dialSize'},
    const {'1': 'dial_name', '3': 4, '4': 1, '5': 12, '10': 'dialName'},
  ],
};

/// Descriptor for `protocol_watch_dial_plate_list_item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_watch_dial_plate_list_itemDescriptor = $convert.base64Decode('CiNwcm90b2NvbF93YXRjaF9kaWFsX3BsYXRlX2xpc3RfaXRlbRInCglkaWFsX3R5cGUYASABKA4yCi5kaWFsX3R5cGVSCGRpYWxUeXBlEhgKB3ZlcnNpb24YAiABKA1SB3ZlcnNpb24SGwoJZGlhbF9zaXplGAMgASgNUghkaWFsU2l6ZRIbCglkaWFsX25hbWUYBCABKAxSCGRpYWxOYW1l');
@$core.Deprecated('Use protocol_watch_dial_plate_operateDescriptor instead')
const protocol_watch_dial_plate_operate$json = const {
  '1': 'protocol_watch_dial_plate_operate',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.dial_operate_type', '10': 'operate'},
    const {'1': 'dial_name', '3': 2, '4': 3, '5': 12, '10': 'dialName'},
    const {'1': 'dial_list_sort', '3': 3, '4': 3, '5': 12, '10': 'dialListSort'},
  ],
};

/// Descriptor for `protocol_watch_dial_plate_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_watch_dial_plate_operateDescriptor = $convert.base64Decode('CiFwcm90b2NvbF93YXRjaF9kaWFsX3BsYXRlX29wZXJhdGUSLAoHb3BlcmF0ZRgBIAEoDjISLmRpYWxfb3BlcmF0ZV90eXBlUgdvcGVyYXRlEhsKCWRpYWxfbmFtZRgCIAMoDFIIZGlhbE5hbWUSJAoOZGlhbF9saXN0X3NvcnQYAyADKAxSDGRpYWxMaXN0U29ydA==');
@$core.Deprecated('Use protocol_watch_dial_plate_inquire_replyDescriptor instead')
const protocol_watch_dial_plate_inquire_reply$json = const {
  '1': 'protocol_watch_dial_plate_inquire_reply',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.dial_operate_type', '10': 'operate'},
    const {'1': 'formula_mode', '3': 2, '4': 1, '5': 13, '10': 'formulaMode'},
    const {'1': 'plate_version', '3': 3, '4': 1, '5': 13, '10': 'plateVersion'},
    const {'1': 'cloud_plate_num', '3': 4, '4': 1, '5': 13, '10': 'cloudPlateNum'},
    const {'1': 'user_cloud_plate_num', '3': 5, '4': 1, '5': 13, '10': 'userCloudPlateNum'},
    const {'1': 'photo_plate_num', '3': 6, '4': 1, '5': 13, '10': 'photoPlateNum'},
    const {'1': 'user_photo_plate_num', '3': 7, '4': 1, '5': 13, '10': 'userPhotoPlateNum'},
    const {'1': 'wallpaper_plate_num', '3': 8, '4': 1, '5': 13, '10': 'wallpaperPlateNum'},
    const {'1': 'user_wallpaper_plate_num', '3': 9, '4': 1, '5': 13, '10': 'userWallpaperPlateNum'},
    const {'1': 'list_item', '3': 10, '4': 3, '5': 11, '6': '.protocol_watch_dial_plate_list_item', '10': 'listItem'},
    const {'1': 'total_size', '3': 11, '4': 1, '5': 13, '10': 'totalSize'},
    const {'1': 'user_cloud_size', '3': 12, '4': 1, '5': 13, '10': 'userCloudSize'},
    const {'1': 'user_photo_size', '3': 13, '4': 1, '5': 13, '10': 'userPhotoSize'},
    const {'1': 'now_show_plate_name', '3': 14, '4': 1, '5': 12, '10': 'nowShowPlateName'},
    const {'1': 'enable_compress', '3': 15, '4': 1, '5': 13, '10': 'enableCompress'},
    const {'1': 'func_table', '3': 16, '4': 1, '5': 13, '10': 'funcTable'},
    const {'1': 'plate_photo_pic_support_num', '3': 17, '4': 1, '5': 13, '10': 'platePhotoPicSupportNum'},
    const {'1': 'all_plate_support_max', '3': 18, '4': 1, '5': 13, '10': 'allPlateSupportMax'},
  ],
};

/// Descriptor for `protocol_watch_dial_plate_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_watch_dial_plate_inquire_replyDescriptor = $convert.base64Decode('Cidwcm90b2NvbF93YXRjaF9kaWFsX3BsYXRlX2lucXVpcmVfcmVwbHkSLAoHb3BlcmF0ZRgBIAEoDjISLmRpYWxfb3BlcmF0ZV90eXBlUgdvcGVyYXRlEiEKDGZvcm11bGFfbW9kZRgCIAEoDVILZm9ybXVsYU1vZGUSIwoNcGxhdGVfdmVyc2lvbhgDIAEoDVIMcGxhdGVWZXJzaW9uEiYKD2Nsb3VkX3BsYXRlX251bRgEIAEoDVINY2xvdWRQbGF0ZU51bRIvChR1c2VyX2Nsb3VkX3BsYXRlX251bRgFIAEoDVIRdXNlckNsb3VkUGxhdGVOdW0SJgoPcGhvdG9fcGxhdGVfbnVtGAYgASgNUg1waG90b1BsYXRlTnVtEi8KFHVzZXJfcGhvdG9fcGxhdGVfbnVtGAcgASgNUhF1c2VyUGhvdG9QbGF0ZU51bRIuChN3YWxscGFwZXJfcGxhdGVfbnVtGAggASgNUhF3YWxscGFwZXJQbGF0ZU51bRI3Chh1c2VyX3dhbGxwYXBlcl9wbGF0ZV9udW0YCSABKA1SFXVzZXJXYWxscGFwZXJQbGF0ZU51bRJBCglsaXN0X2l0ZW0YCiADKAsyJC5wcm90b2NvbF93YXRjaF9kaWFsX3BsYXRlX2xpc3RfaXRlbVIIbGlzdEl0ZW0SHQoKdG90YWxfc2l6ZRgLIAEoDVIJdG90YWxTaXplEiYKD3VzZXJfY2xvdWRfc2l6ZRgMIAEoDVINdXNlckNsb3VkU2l6ZRImCg91c2VyX3Bob3RvX3NpemUYDSABKA1SDXVzZXJQaG90b1NpemUSLQoTbm93X3Nob3dfcGxhdGVfbmFtZRgOIAEoDFIQbm93U2hvd1BsYXRlTmFtZRInCg9lbmFibGVfY29tcHJlc3MYDyABKA1SDmVuYWJsZUNvbXByZXNzEh0KCmZ1bmNfdGFibGUYECABKA1SCWZ1bmNUYWJsZRI8ChtwbGF0ZV9waG90b19waWNfc3VwcG9ydF9udW0YESABKA1SF3BsYXRlUGhvdG9QaWNTdXBwb3J0TnVtEjEKFWFsbF9wbGF0ZV9zdXBwb3J0X21heBgSIAEoDVISYWxsUGxhdGVTdXBwb3J0TWF4');
