///
//  Generated code. Do not modify.
//  source: contacts.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use operate_typeDescriptor instead')
const operate_type$json = const {
  '1': 'operate_type',
  '2': const [
    const {'1': 'INVALID', '2': 0},
    const {'1': 'INQUIRE', '2': 1},
    const {'1': 'SET', '2': 2},
  ],
};

/// Descriptor for `operate_type`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List operate_typeDescriptor = $convert.base64Decode('CgxvcGVyYXRlX3R5cGUSCwoHSU5WQUxJRBAAEgsKB0lOUVVJUkUQARIHCgNTRVQQAg==');
@$core.Deprecated('Use protocol_frequent_contacts_itemDescriptor instead')
const protocol_frequent_contacts_item$json = const {
  '1': 'protocol_frequent_contacts_item',
  '2': const [
    const {'1': 'phone_number', '3': 1, '4': 1, '5': 12, '10': 'phoneNumber'},
    const {'1': 'contact_name', '3': 2, '4': 1, '5': 12, '10': 'contactName'},
  ],
};

/// Descriptor for `protocol_frequent_contacts_item`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_frequent_contacts_itemDescriptor = $convert.base64Decode('Ch9wcm90b2NvbF9mcmVxdWVudF9jb250YWN0c19pdGVtEiEKDHBob25lX251bWJlchgBIAEoDFILcGhvbmVOdW1iZXISIQoMY29udGFjdF9uYW1lGAIgASgMUgtjb250YWN0TmFtZQ==');
@$core.Deprecated('Use protocol_frequent_contacts_operateDescriptor instead')
const protocol_frequent_contacts_operate$json = const {
  '1': 'protocol_frequent_contacts_operate',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'contacts_item', '3': 2, '4': 3, '5': 11, '6': '.protocol_frequent_contacts_item', '10': 'contactsItem'},
  ],
};

/// Descriptor for `protocol_frequent_contacts_operate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_frequent_contacts_operateDescriptor = $convert.base64Decode('CiJwcm90b2NvbF9mcmVxdWVudF9jb250YWN0c19vcGVyYXRlEicKB29wZXJhdGUYASABKA4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGUSRQoNY29udGFjdHNfaXRlbRgCIAMoCzIgLnByb3RvY29sX2ZyZXF1ZW50X2NvbnRhY3RzX2l0ZW1SDGNvbnRhY3RzSXRlbQ==');
@$core.Deprecated('Use protocol_frequent_contacts_inquire_replyDescriptor instead')
const protocol_frequent_contacts_inquire_reply$json = const {
  '1': 'protocol_frequent_contacts_inquire_reply',
  '2': const [
    const {'1': 'operate', '3': 1, '4': 1, '5': 14, '6': '.operate_type', '10': 'operate'},
    const {'1': 'frequent_contacts_support_max', '3': 2, '4': 1, '5': 13, '10': 'frequentContactsSupportMax'},
    const {'1': 'contacts_item', '3': 3, '4': 3, '5': 11, '6': '.protocol_frequent_contacts_item', '10': 'contactsItem'},
  ],
};

/// Descriptor for `protocol_frequent_contacts_inquire_reply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List protocol_frequent_contacts_inquire_replyDescriptor = $convert.base64Decode('Cihwcm90b2NvbF9mcmVxdWVudF9jb250YWN0c19pbnF1aXJlX3JlcGx5EicKB29wZXJhdGUYASABKA4yDS5vcGVyYXRlX3R5cGVSB29wZXJhdGUSQQodZnJlcXVlbnRfY29udGFjdHNfc3VwcG9ydF9tYXgYAiABKA1SGmZyZXF1ZW50Q29udGFjdHNTdXBwb3J0TWF4EkUKDWNvbnRhY3RzX2l0ZW0YAyADKAsyIC5wcm90b2NvbF9mcmVxdWVudF9jb250YWN0c19pdGVtUgxjb250YWN0c0l0ZW0=');
