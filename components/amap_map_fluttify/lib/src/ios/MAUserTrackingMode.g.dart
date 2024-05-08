// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

enum MAUserTrackingMode {
  MAUserTrackingModeNone /* 0 */,
  MAUserTrackingModeFollow /* 1 */,
  MAUserTrackingModeFollowWithHeading /* 2 */
}

extension MAUserTrackingModeToX on MAUserTrackingMode {
  int toValue() {
    switch (this) {
      case MAUserTrackingMode.MAUserTrackingModeNone: return 0;
      case MAUserTrackingMode.MAUserTrackingModeFollow: return 1;
      case MAUserTrackingMode.MAUserTrackingModeFollowWithHeading: return 2;
      default: return 0;
    }
  }
}

extension MAUserTrackingModeFromX on int {
  MAUserTrackingMode toMAUserTrackingMode() {
    switch (this) {
      case 0: return MAUserTrackingMode.MAUserTrackingModeNone;
      case 1: return MAUserTrackingMode.MAUserTrackingModeFollow;
      case 2: return MAUserTrackingMode.MAUserTrackingModeFollowWithHeading;
      default: return MAUserTrackingMode.values[this + 0];
    }
  }
}