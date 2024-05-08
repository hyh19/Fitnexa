//
//  Generated code. Do not modify.
//  source: update.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use event_idDescriptor instead')
const event_id$json = {
  '1': 'event_id',
  '2': [
    {'1': 'EVENT_ID_NULL', '2': 0},
    {'1': 'EVENT_ID_MUSIC_CONTROL', '2': 1},
    {'1': 'EVENT_ID_FINE_PHONE', '2': 2},
    {'1': 'EVENT_ID_SYNC_DATA', '2': 3},
    {'1': 'EVENT_ID_FINE_WATCH', '2': 4},
    {'1': 'EVENT_ID_VOLUME_CHANGE', '2': 5},
  ],
};

/// Descriptor for `event_id`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List event_idDescriptor = $convert.base64Decode(
    'CghldmVudF9pZBIRCg1FVkVOVF9JRF9OVUxMEAASGgoWRVZFTlRfSURfTVVTSUNfQ09OVFJPTB'
    'ABEhcKE0VWRU5UX0lEX0ZJTkVfUEhPTkUQAhIWChJFVkVOVF9JRF9TWU5DX0RBVEEQAxIXChNF'
    'VkVOVF9JRF9GSU5FX1dBVENIEAQSGgoWRVZFTlRfSURfVk9MVU1FX0NIQU5HRRAF');

@$core.Deprecated('Use protocol_notice_update_operateDescriptor instead')
const protocol_notice_update_operate$json = {
  '1': 'protocol_notice_update_operate',
  '2': [
    {'1': 'event_id', '3': 1, '4': 1, '5': 14, '6': '.event_id', '10': 'eventId'},
    {'1': 'event_key', '3': 2, '4': 1, '5': 13, '10': 'eventKey'},
    {'1': 'event_value', '3': 3, '4': 1, '5': 13, '10': 'eventValue'},
  ],
};

/// Descriptor for `protocol_notice_update_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_notice_update_operateDescriptor = $convert.base64Decode(
    'Ch5wcm90b2NvbF9ub3RpY2VfdXBkYXRlX29wZXJhdGUSJAoIZXZlbnRfaWQYASABKA4yCS5ldm'
    'VudF9pZFIHZXZlbnRJZBIbCglldmVudF9rZXkYAiABKA1SCGV2ZW50S2V5Eh8KC2V2ZW50X3Zh'
    'bHVlGAMgASgNUgpldmVudFZhbHVl');

