import '../../../core/app_export.dart';

/// This class is used in the [hrvcardthree_item_widget] screen.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HrvcardthreeItemModel {
  HrvcardthreeItemModel(
      {this.fiftyText, this.msText, this.titleText, this.id}) {
    fiftyText = fiftyText ?? Rx("50");
    msText = msText ?? Rx("ms");
    titleText = titleText ?? Rx("HRV Daily Average");
    id = id ?? Rx("");
  }

  Rx<String>? fiftyText;

  Rx<String>? msText;

  Rx<String>? titleText;

  Rx<String>? id;
}
