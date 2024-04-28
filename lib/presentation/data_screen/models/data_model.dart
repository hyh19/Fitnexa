import '../../../core/app_export.dart';
import 'hrvcardthree_item_model.dart';

/// This class defines the variables used in the [data_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class DataModel {
  Rx<List<HrvcardthreeItemModel>> hrvcardthreeItemList = Rx([
    HrvcardthreeItemModel(
        fiftyText: "50".obs,
        msText: "ms".obs,
        titleText: "HRV Daily Average".obs),
    HrvcardthreeItemModel(
        fiftyText: "50".obs,
        msText: "ms".obs,
        titleText: "HRV Daily Average".obs),
    HrvcardthreeItemModel(
        fiftyText: "50".obs,
        msText: "ms".obs,
        titleText: "HRV Daily Average".obs)
  ]);
}
